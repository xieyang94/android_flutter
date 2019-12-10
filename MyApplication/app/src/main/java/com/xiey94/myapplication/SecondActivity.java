package com.xiey94.myapplication;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;

import io.flutter.facade.Flutter;

public class SecondActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);


        Fragment flutterFragment = Flutter.createFragment("r2");
        FragmentTransaction ft = getSupportFragmentManager().beginTransaction();
        ft.add(R.id.fl_container, flutterFragment);
        ft.commit();
    }
}
