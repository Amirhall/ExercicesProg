package org.Amir.accesreseau;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import org.Amir.accesreseau.http.RetrofitUtil;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Service server = RetrofitUtil.get();
        Call<String>
    }
}