package com.example.room;

import androidx.appcompat.app.AppCompatActivity;
import androidx.room.Room;

import android.os.Bundle;
import android.widget.Toast;

import com.example.room.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {
    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(bindinggetRoot());
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        db = setupDatebase();
    }

    private DB setupDatebase(){
        return Room.databaseBuilder(getApplicationContext(), DB.class, "last-cloe-db")
    }
    @Override
    protected void onResume(){
        super.onResume();
        DateTime currentDateTime = db.getRoa().getLastClose();
        if(currentDateTime == null)
            Toast.makeText(this, "premier demarrate", Toast.LENGTH_SHORT).show();
        else{

        }
    }
    @Override
    protected void onPause(){

    }
}