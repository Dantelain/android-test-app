package com.example.myapplication;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView textOuput = findViewById(R.id.textView);
        EditText editTextInput = findViewById(R.id.editTextInput);

        Button buttonSave = findViewById(R.id.buttonSave);
        buttonSave.setOnClickListener(view -> textOuput.setText(editTextInput.getText()));

        Button buttonClear = findViewById(R.id.buttonClear);
        buttonClear.setOnClickListener(view -> {
            textOuput.setText("");
            editTextInput.setText("");
        });
    }
}
