package com.limbwal.light;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Layout;
import android.transition.Slide;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class animations extends AppCompatActivity {
    private ArrayList data = new ArrayList();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_animations);
        ListView lv = findViewById(R.id.listview);
        generateData();
        lv.setAdapter(new animationsListAdapter(this, R.layout.animations_listview_items, data));

    }
    private void generateData() {
        for (int i = 0; i < 24; i++) {
            data.add("asdf"+i);
        }
    }
    private class animationsListAdapter extends ArrayAdapter<String> {
        private int layout;
        public animationsListAdapter(@NonNull Context context, int resource, @NonNull List<String> objects) {
            super(context, resource, objects);
            layout = resource;
        }

        @NonNull
        @Override
        public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
            ViewHolder mainViewHolder = null;
            if (convertView == null) {
                LayoutInflater inflater = LayoutInflater.from(getContext());
                convertView = inflater.inflate(layout, parent, false);
                ViewHolder viewHolder = new ViewHolder();
                viewHolder.listSwitch = convertView.findViewById(R.id.list_item_switch);
                viewHolder.listTitle = convertView.findViewById(R.id.list_item_title);
                viewHolder.listSlider = convertView.findViewById(R.id.list_item_slider);
                viewHolder.listSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                        if (b) {
                            Toast.makeText(getContext(), "Checked", Toast.LENGTH_SHORT).show();
                        }
                        else {
                            Toast.makeText(getContext(), "unChecked", Toast.LENGTH_SHORT).show();
                        }
                    }
                });
                convertView.setTag(viewHolder);
            }
            else {
                mainViewHolder = (ViewHolder) convertView.getTag();
                mainViewHolder.listTitle.setText(getItem(position));
            }
            return convertView;
        }
    }
    public class ViewHolder {
        Switch listSwitch;
        TextView listTitle;
        SeekBar listSlider;
    }
}
