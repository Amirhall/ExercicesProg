package org.Amir.retrofitsimple.http;

import java.security.Provider;

import retrofit2.Retrofit;
import retrofit2.converter.scalars.ScalarsConverterFactory;

public class RetrofitUtil {
    public static Service get(){
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://api.github.com/")
                .addConverterFactory(ScalarsConverterFactory.create())
                .build();
        Service service = retrofit.create(Service.class);
        return service;
    }



}
