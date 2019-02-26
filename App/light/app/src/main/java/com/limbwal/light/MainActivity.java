package com.limbwal.light;

import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.os.CountDownTimer;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.flask.colorpicker.ColorPickerView;
import com.flask.colorpicker.OnColorChangedListener;
import com.flask.colorpicker.OnColorSelectedListener;
import com.flask.colorpicker.builder.ColorPickerClickListener;
import com.flask.colorpicker.builder.ColorPickerDialogBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.net.SocketException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    int NUM_HEXAGONS = 7;
    Hexagon[] hexagons = new Hexagon[NUM_HEXAGONS];
    ArrayList<Hexagon> selectedHexagons = new ArrayList<Hexagon>();
    ArrayList<Integer> selectedHexagonColors = new ArrayList<Integer>();
    Button multipleColorChangeButton;                                                     // button that comes up when selecting multiple hexagons
    RequestQueue queue;                                                                   // http request queue
    boolean stillHeld = false;                                                            // button hold flag
    boolean selectModeEnabled = false;                                                    // hexlight selection mode flag - for selecting multiple hexagons
    int bufferColor = Color.RED;                                                          // color buffer
    int color = 3;                                                                        // another color buffer
    TextView textView;
    SeekBar brightnessBar;
    String baseIP = "http://192.168.1.14/";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        this.setRequestedOrientation(
                ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //set status bar to same color as rest of app
        Window window = this.getWindow();
        window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        window.setStatusBarColor(ContextCompat.getColor(this,R.color.colorPrimaryDark));

        textView = findViewById(R.id.textView);
        brightnessBar = findViewById(R.id.brightnessBar);
        brightnessBar.getProgressDrawable().setColorFilter(Color.rgb(0, 192, 255), PorterDuff.Mode.SRC_IN);
        brightnessBar.getThumb().setColorFilter(Color.rgb(0, 192, 255), PorterDuff.Mode.SRC_IN);
        brightnessBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int i, boolean b) {
            }
            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }
            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                setBrightness(getBrightnessHexString((int)(((float)seekBar.getProgress()/(float)seekBar.getMax())*255))); //current position/max position *255
            }
        });

        queue = Volley.newRequestQueue(this);                                     // initialize request queue
        multipleColorChangeButton = findViewById(R.id.setColor);
        multipleColorChangeButton.setVisibility(View.INVISIBLE);

        for(int i = 0; i < NUM_HEXAGONS; i++) { // initialize hexagons
            String buttonID = "hexView" + i;
            int resID = getResources().getIdentifier(buttonID, "id", getPackageName());
            hexagons[i] = findViewById(resID);
            hexagons[i].id = i;
            changeBackgroundColor(Color.rgb(0, 192, 255), i); //00c0ff - aqua
        }
        for (int i = 0; i < hexagons.length; i++) {
            hexagons[i].id = i;
            final int foo = i;
            hexagons[i].setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    touchHandler(motionEvent, foo);
                    return true;
                }
            });
        }
        setColors();
        multipleColorChangeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                final Context context = MainActivity.this;
                selectModeEnabled = false;                // deactivate select mode
                stillHeld = false;
                createMultipleColorSelector(context);
            }
        });
    }


    void touchHandler(MotionEvent event, final int buttonNumber) {

        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                stillHeld = true;           // turn on held flag
                new CountDownTimer(350, 500) {

                    public void onTick(long millisUntilFinished) {

                    }

                    public void onFinish() {
                        if (hexagons[buttonNumber].getMaskColor() != Color.LTGRAY) {
                            if (stillHeld) {
                                multipleColorChangeButton.setVisibility(View.VISIBLE);
                                selectedHexagonColors.add(hexagons[buttonNumber].getMaskColor());
                                hexagons[buttonNumber].setMaskColor(Color.LTGRAY);
                                selectedHexagons.add(hexagons[buttonNumber]);
                                selectModeEnabled = true;
                            }
                        }
                    }
                }.start();
                break;
            case MotionEvent.ACTION_UP:
                stillHeld = false;
                if (!selectModeEnabled) {
                    if (hexagons[buttonNumber].onTouchEvent(event)) {
                        final Context context = MainActivity.this;

                        createSingleColorSelector(context, buttonNumber);
                    }
                }
                else {
                    if (hexagons[buttonNumber].getMaskColor() == Color.LTGRAY && (Math.abs(event.getEventTime() - event.getDownTime())) < 500) {
                        for (int i = 0; i < selectedHexagons.size(); i++) {
                            if (selectedHexagons.get(i) == hexagons[buttonNumber]) {
                                hexagons[buttonNumber].setMaskColor(selectedHexagonColors.get(i));
                                selectedHexagons.remove(i);
                                selectedHexagonColors.remove(i);
                                break;
                            }
                        }
                        if (selectedHexagons.isEmpty()){
                            selectModeEnabled = false;
                            multipleColorChangeButton.setVisibility(View.INVISIBLE);
                        }
                    }
                    else {
                        if (hexagons[buttonNumber].getMaskColor() != Color.LTGRAY) {
                            selectedHexagonColors.add(hexagons[buttonNumber].getMaskColor());
                            hexagons[buttonNumber].setMaskColor(Color.LTGRAY);
                            selectedHexagons.add(hexagons[buttonNumber]);
                        }
                    }
                }
                break;
        }
    }

    private void changeBackgroundColor(int selectedColor, int i) {
        bufferColor = selectedColor;
        hexagons[i].setMaskColor(selectedColor);
    }
    public String getColorHexString(int color) {
       return String.format("%06X", (long) (color & 0xFFFFFFL));
    }
    public String getBrightnessHexString(int brightness) {
        return String.format("%02X", brightness & 0xFFL);
    }
    public void setBrightness(String brightness) {  // @params brightness in hexcode in string - full brightness = 255 = FF
       sendStringRequest(baseIP + "BR="+brightness);
    }
    public void setColors() {
        String url = baseIP;
        for (int i = 0; i < hexagons.length; i++) {
            url += "ID=" + hexagons[i].id + "COLOR=" + getColorHexString(hexagons[i].getMaskColor());
            if (i != hexagons.length) url += "+";
        }
        sendStringRequest(url);
    }
    public void sendStringRequest(String url) {
        StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        if (response.equals("ok")) textView.setText("");
                        else textView.setText("Something went wrong, please retry - "+response);
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                textView.setText("Something went wrong, please retry - "+error);
            }
        });
        // Add the request to the RequestQueue.
        queue.add(stringRequest);
    }
    void createMultipleColorSelector(Context context) {
        ColorPickerDialogBuilder
                .with(context)
                .setTitle("Pick a Color - Hold ok for more options")
                .initialColor(Color.RED)
                .wheelType(ColorPickerView.WHEEL_TYPE.FLOWER)
                .density(12)
                .setOnColorChangedListener(new OnColorChangedListener() {
                    @Override
                    public void onColorChanged(int selectedColor) {
                    }
                })
                .setOnColorSelectedListener(new OnColorSelectedListener() {
                    @Override
                    public void onColorSelected(int selectedColor) {

                    }
                })
                .setPositiveButton("ok", new ColorPickerClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int selectedColor, Integer[] allColors) {
                        for (int i = 0; i < selectedHexagons.size(); i++){
                            selectedHexagons.get(i).setMaskColor(selectedColor);
                        }
                        selectedHexagons.clear();
                        selectedHexagonColors.clear();
                        multipleColorChangeButton.setVisibility(View.INVISIBLE);
                        setColors();
                    }
                })
                .setNegativeButton("cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        for (int i = 0; i < selectedHexagons.size(); i++) {
                            selectedHexagons.get(i).setMaskColor(selectedHexagonColors.get(i));
                        }
                        selectedHexagons.clear();
                        selectedHexagonColors.clear();

                    }
                })
                .showColorEdit(true)
                .setColorEditTextColor(ContextCompat.getColor(MainActivity.this, android.R.color.holo_blue_bright))
                .noSliders()
                .build()
                .show();
    }
    void createSingleColorSelector(Context context, final int buttonNumber) {
        ColorPickerDialogBuilder
                .with(context)
                .setTitle("Pick a Color - Hold ok for more options")
                .initialColor(Color.RED)
                .wheelType(ColorPickerView.WHEEL_TYPE.FLOWER)
                .density(12)
                .setOnColorChangedListener(new OnColorChangedListener() {
                    @Override
                    public void onColorChanged(int selectedColor) {
                        color = selectedColor;
                    }
                })
                .setOnColorSelectedListener(new OnColorSelectedListener() {
                    @Override
                    public void onColorSelected(int selectedColor) {
                        Log.d("a", "onColorSelected: 0x" + Integer.toHexString(selectedColor));


                    }
                })
                .setPositiveButton("ok", new ColorPickerClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int selectedColor, Integer[] allColors) {
                        changeBackgroundColor(selectedColor, buttonNumber);
                        if (allColors != null) {
                            setColors();
                        }
                    }
                })
                .setNegativeButton("cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                    }
                })
                .showColorEdit(true)
                .setColorEditTextColor(ContextCompat.getColor(MainActivity.this, android.R.color.holo_blue_bright))
                .noSliders()
                .build()
                .show();
    }




}
