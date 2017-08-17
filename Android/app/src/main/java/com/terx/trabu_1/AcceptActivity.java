package com.terx.trabu_1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;


public class AcceptActivity extends AppCompatActivity {

    static int clicks = 0;
    Button apt_button;
    CheckBox checkBox;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_accept);
        apt_button = (Button) findViewById(R.id.apt_button);
        apt_button.setClickable(false);
        checkBox = (CheckBox) findViewById(R.id.checkBox);
    }

    public void OnAccept(View view) {
        clicks++;
        if(clicks%2==0){
            apt_button.setClickable(false);
        } else {
            apt_button.setClickable(true);
        }
    }

    public void OnAcceptBtn(View view) {

        Intent intent = new Intent(getApplicationContext(),MainActivity.class);
        startActivity(intent);
    }
}
