package com.terx.trabu_1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class LoginActivity extends AppCompatActivity {

    //ENTITIES
    EditText UsernameEt, PasswordEt;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //GIVING VIEW TO ENTITIES
        UsernameEt = (EditText)findViewById(R.id.email);
        PasswordEt = (EditText)findViewById(R.id.password);
    }

    public void OnLogin(View view) {

        //GETTING VALUES FROM ENTITIES
        String username = UsernameEt.getText().toString();
        String password = PasswordEt.getText().toString();

        //REQUEST TYPE
        String type = "login";

        //CALLING BACKGROUND WORKER
        BackgroundWorker backgroundWorker = new BackgroundWorker(this);
        backgroundWorker.execute(type, username, password);
    }

    public void OpenReg (View view) {
        startActivity(new Intent(this, RegisterPage.class));
    }

}
