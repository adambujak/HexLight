package com.limbwal.hexlightmarkii;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;

import java.util.ArrayList;


class HexagonManager {
    ArrayList hexagons;          // Array list of hexagons
    int hexagonCnt;              // Hexagon count

    public HexagonManager() {    // Constructor
        this.hexagons = new ArrayList();
        this.hexagonCnt = 0;     // Initialize with 0 hexagons
    }
    public void addHexagon() {
        this.hexagonCnt++;       // Increment hexagon count
//        this.hexagons.add(new Hexagon());
    }
    public void drawHexagon(int hexagonIndex) {
//        this.hexagons.get(hexagonIndex)
        // Create Button Dynamically
        Button btnShow = new Button(layout_builder.getAppContext());
        btnShow.setText("hey");
        btnShow.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        btnShow.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(layout_builder.getAppContext(), "works", Toast.LENGTH_LONG).show();
            }
        });

        // Add Button to LinearLayout
        if (linearLayout != null) {
            linearLayout.addView(btnShow);
        }
    }

}
}


public class layout_builder extends AppCompatActivity {

    private static Context context;

    Button addHexButton;
    ArrayList hexagons;
    HexagonManager hexagonManager = new HexagonManager();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_layout_builder);
        layout_builder.context = getApplicationContext();
        addHexButton = findViewById(R.id.addButton);
        addHexButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                newHexagon();
            }
        });

    }
    void newHexagon() {
        hexagonManager.addHexagon();
    }

    public static Context getAppContext() {
        return layout_builder.context;
    }
}
