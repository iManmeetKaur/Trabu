package com.terx.trabu_1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TableLayout;

public class SearchBus extends AppCompatActivity {
    EditText src, dest;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search_bus);
        src = (EditText) findViewById(R.id.src);
        dest = (EditText) findViewById(R.id.dest);

    }

    public void OnSearch() {
        String source = src.getText().toString();
        String destination = src.getText().toString();
        String type = "searchBus";

        //CALLING BACKGROUND WORKER
        //BackgroundWorker backgroundWorker = new BackgroundWorker(this);
       // backgroundWorker.execute(type, source, destination);
    }
}
