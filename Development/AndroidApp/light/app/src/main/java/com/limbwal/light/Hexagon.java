package com.limbwal.light;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.Region;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

public class Hexagon extends View {
    private Path hexagonPath;
    private Path hexagonBorderPath;
    private float radius;
    private float width, height;
    private int maskColor;
    public int id;
    public Hexagon(Context context) {
        super(context);
        init();
    }

    @Override
    public void setOnClickListener(@Nullable OnClickListener l) {
        super.setOnClickListener(l);
    }

    public Hexagon(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public Hexagon(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        hexagonPath = new Path();
        hexagonBorderPath = new Path();
        maskColor = 0xFF01FF77;
    }
    public int getMaskColor() {
        return maskColor;
    }
    public void setRadius(float r) {
        this.radius = r;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        int x = (int) event.getX();
        int y = (int) event.getY();
        return inHexagon(x, y);
    }
    public boolean inHexagon(int x, int y) {  //returns if touch was inside hexagon or not.
        float triangleHeight = (float) (Math.sqrt(3) * radius / 2);
        float centerX = width/2;
        float centerY = height/2;
        if ((x >= (centerX - radius/2)) && (x <= (centerX + radius/2))){
            Log.i("dif", "1");
            return true;
        }
        if (x > 0 && x < radius/2 && y > (centerY - triangleHeight) && y < (centerY + triangleHeight)){
            Log.i("dif", "2");
            float upper = centerY - getYFromHex(x);
            float lower = centerY + getYFromHex(x);
            if (y > upper - 2 && y < lower + 2) { // added plus two for floating innacuracies
                Log.i("dif", "2q");
                return true;
            }
        }
        if (x > 3*radius/2 && x < radius*2){
            x = (2 * (int) radius) - x;
            Log.i("x", ""+x);
            Log.i("r", ""+radius);
            Log.i("d2if", ""+getYFromHex(x));
            float upper = centerY - getYFromHex(x);
            float lower = centerY + getYFromHex(x);
            Log.i("dif", "3");
            if (y > upper - 2 && y < lower + 2) { // added plus two for floating innacuracies
                Log.i("dif", "3a");
                return true;
            }
        }
        return false;
    }
    public void setMaskColor(int color) {
        this.maskColor = color;
        invalidate();
    }
    public float getYFromHex(float x) { // this function returns the absolute value of the max value of y that is enclosed in the hexagon at a given x
        return (float) Math.sqrt(3)*(x);
    }
/*
    private void calculatePath() {
        float triangleHeight = (float) (Math.sqrt(3) * radius / 2);
        float centerX = width/2;
        float centerY = height/2;
        hexagonPath.moveTo(centerX, centerY + radius);
        hexagonPath.lineTo(centerX - triangleHeight, centerY + radius/2);
        hexagonPath.lineTo(centerX - triangleHeight, centerY - radius/2);
        hexagonPath.lineTo(centerX, centerY - radius);
        hexagonPath.lineTo(centerX + triangleHeight, centerY - radius/2);
        hexagonPath.lineTo(centerX + triangleHeight, centerY + radius/2);
        hexagonPath.moveTo(centerX, centerY + radius);

        float radiusBorder = radius - 5;
        float triangleBorderHeight = (float) (Math.sqrt(3) * radiusBorder / 2);
        hexagonBorderPath.moveTo(centerX, centerY + radiusBorder);
        hexagonBorderPath.lineTo(centerX - triangleBorderHeight, centerY + radiusBorder/2);
        hexagonBorderPath.lineTo(centerX - triangleBorderHeight, centerY - radiusBorder/2);
        hexagonBorderPath.lineTo(centerX, centerY - radiusBorder);
        hexagonBorderPath.lineTo(centerX + triangleBorderHeight, centerY - radiusBorder/2);
        hexagonBorderPath.lineTo(centerX + triangleBorderHeight, centerY + radiusBorder/2);
        hexagonBorderPath.moveTo(centerX, centerY + radiusBorder);
        invalidate();
    }
*/

    private void calculatePath() {
        float triangleHeight = (float) (Math.sqrt(3) * radius / 2);
        hexagonPath = new Path();
        float centerX = width/2;
        float centerY = height/2;
        hexagonPath.moveTo(centerX, centerY + triangleHeight);
        hexagonPath.lineTo(centerX + radius/2, centerY+triangleHeight);
        hexagonPath.lineTo(centerX + radius, centerY);
        hexagonPath.lineTo(centerX + radius/2, centerY-triangleHeight);
        hexagonPath.lineTo(centerX - radius/2, centerY-triangleHeight);
        hexagonPath.lineTo(centerX - radius, centerY);
        hexagonPath.lineTo(centerX - radius/2, centerY+triangleHeight);
        invalidate();
    }
    @Override
    public void onDraw(Canvas c){
        super.onDraw(c);

        c.clipPath(hexagonPath, Region.Op.INTERSECT);
        c.drawColor(maskColor);
        c.save();
    }

    // getting the view size and default radius
    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec){
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        width = MeasureSpec.getSize(widthMeasureSpec);
        height =  MeasureSpec.getSize(heightMeasureSpec);
        radius = height / 2 - 10;
        calculatePath();
    }
}