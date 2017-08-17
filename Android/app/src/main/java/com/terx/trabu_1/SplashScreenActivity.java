package com.terx.trabu_1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ProgressBar;

public class SplashScreenActivity extends AppCompatActivity {

    ProgressBar progressBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);
        progressBar = (ProgressBar) findViewById(R.id.simpleProgressBar);
        Thread thread = new Thread() {
            @Override
            public void run() {
                try {
                    sleep(500);
                    for(float i = 0; i<=100; i+=0.56) {
                        sleep(16);
                        progressBar.incrementProgressBy((int)i);
                    }
                    Intent intent = new Intent(getApplicationContext(),AcceptActivity.class);
                    startActivity(intent);
                    finish();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        };
        thread.start();
    }
}
