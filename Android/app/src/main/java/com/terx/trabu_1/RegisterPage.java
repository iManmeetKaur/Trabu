package com.terx.trabu_1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class RegisterPage extends AppCompatActivity {
    EditText nameEt, surnameEt, ageEt, usernameEt, passwordEt;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register_page);
        nameEt = (EditText)findViewById(R.id.name);
        surnameEt = (EditText)findViewById(R.id.surname);
        ageEt = (EditText)findViewById(R.id.age);
        usernameEt = (EditText)findViewById(R.id.username);
        passwordEt = (EditText)findViewById(R.id.password);
    }

    public void OnRegister(View view) {

        //GETTING VALUES FROM ENTITIES
        String name = nameEt.getText().toString();
        String surname = surnameEt.getText().toString();
        String age = ageEt.getText().toString();
        String username = usernameEt.getText().toString();
        String password = passwordEt.getText().toString();

        //REQUEST TYPE
        String type = "register";

        //CALLING BACKGROUND WORKER
        BackgroundWorker backgroundWorker = new BackgroundWorker(this);
        backgroundWorker.execute(type, name, surname, age, username, password);
    }
}
