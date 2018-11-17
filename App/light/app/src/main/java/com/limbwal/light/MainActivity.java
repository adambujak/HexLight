package com.limbwal.light;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.CountDownTimer;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;

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

    Hexagon[] hexagons = new Hexagon[7];
    ArrayList<Hexagon> selectedHexagons = new ArrayList<Hexagon>();
    ArrayList<Integer> selectedHexagonColors = new ArrayList<Integer>();
    Button multipleColorChangeButton;
    boolean stillHeld = false;
    RequestQueue queue;
    boolean selectModeEnabled = false;
    int bufferColor = Color.RED;
    int color = 3 ;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        queue = Volley.newRequestQueue(this);
        multipleColorChangeButton = findViewById(R.id.setColor);
        multipleColorChangeButton.setVisibility(View.INVISIBLE);
        hexagons[0] = findViewById(R.id.hexView);
        hexagons[1] = findViewById(R.id.hexView1);
        hexagons[2] = findViewById(R.id.hexView2);
        hexagons[3] = findViewById(R.id.hexView3);
        hexagons[4] = findViewById(R.id.hexView4);
        hexagons[5] = findViewById(R.id.hexView5);
        hexagons[6] = findViewById(R.id.hexView6);
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
        multipleColorChangeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                final Context context = MainActivity.this;
                selectModeEnabled = false;
                stillHeld = false;
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
                                Log.d("a", "onColorSelected: 0x" + Integer.toHexString(selectedColor));
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
                                if (allColors != null) {
                                    StringBuilder sb = null;

                                    for (Integer color : allColors) {
                                        if (color == null)
                                            continue;
                                        if (sb == null)
                                            sb = new StringBuilder("Color List:");
                                        sb.append("\r\n#" + Integer.toHexString(color).toUpperCase());
                                    }



                                }
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
        });
    }
    void touchHandler(MotionEvent event, final int buttonNumber) {

        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                stillHeld = true;

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
                                            StringBuilder sb = null;

                                            for (Integer color : allColors) {
                                                if (color == null)
                                                    continue;
                                                if (sb == null)
                                                    sb = new StringBuilder("Color List:");
                                                sb.append("\r\n#" + Integer.toHexString(color).toUpperCase());
                                            }

                                            String hexColor = String.format("%06X", (0xFFFFFF & selectedColor));
                                            System.out.println("hex color" + hexColor);
                                            int [] rgb = getRGB(hexColor);
                                            setColor(rgb);

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
    public int[] getRGB(String rgb){
        int[] ret = new int[3];
        System.out.println(rgb.length());
        for(int i=0; i<3; i++){
            ret[i] = hexToInt(rgb.charAt(i*2), rgb.charAt(i*2+1));
        }
        return ret;
    }

    public int hexToInt(char a, char b){
        int x = a < 65 ? a-48 : a-55;
        int y = b < 65 ? b-48 : b-55;
        return x*16+y;
    }
    private void changeBackgroundColor(int selectedColor, int i) {
        bufferColor = selectedColor;
        hexagons[i].setMaskColor(selectedColor);
    }
    public void setColor(int[] colors) {

        String url ="http://192.168.1.21/COLOR="+colors[0]+":"+colors[1]+":"+colors[2];
        System.out.print(url);
        StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        // Display the first 500 characters of the response string.

                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });

        // Add the request to the RequestQueue.
        queue.add(stringRequest);
    }
}

