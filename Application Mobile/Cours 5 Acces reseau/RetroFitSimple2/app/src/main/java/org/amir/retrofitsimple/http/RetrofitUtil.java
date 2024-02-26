package org.amir.retrofitsimple.http;

import android.app.Service;

import retrofit2.Retrofit;
import retrofit2.converter.scalars.ScalarsConverterFactory;

public class RetrofitUtil {

    public static ServiceGithub get(){
        Retrofit retrofitGithub = new Retrofit.Builder()
                .baseUrl("https://api.github.com/")
                .addConverterFactory(ScalarsConverterFactory.create())
                .build();
        ServiceGithub service = retrofitGithub.create(ServiceGithub.class);
        return service;
    }
}
