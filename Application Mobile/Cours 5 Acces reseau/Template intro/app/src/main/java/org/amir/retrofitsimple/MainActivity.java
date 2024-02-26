package org.amir.retrofitsimple;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import org.amir.retrofitsimple.http.RetrofitUtil;
import org.amir.retrofitsimple.http.ServiceGithub;

import java.io.IOException;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState)  {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button button = findViewById(R.id.button);
        TextView textView = findViewById(R.id.edittext);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                github();
            }
        });



    }
    private void github(){
        ServiceGithub service = RetrofitUtil.get();
        Call<String> call = service.listRepos("amirhall");
        call.enqueue(new Callback<String>() {
            @Override
            public void onResponse(Call<String> call, Response<String> response) {
                String result = response.body();
                Log.i("retro", result);
            }

            @Override
            public void onFailure(Call<String> call, Throwable t) {
                Log.i("retro", "onfailure");
            }
        });
        Log.i("retro", "line 49");

    }
}