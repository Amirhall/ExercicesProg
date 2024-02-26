package org.amir.retrofitsimple.http;

import retrofit2.converter.scalars.ScalarsConverterFactory;

public class Retrofit {
    public static Service get(){
        retrofit2.Retrofit retrofitGithub = new retrofit2.Retrofit.Builder()
                .baseUrl("https://4n6.azurewebsites.net/")
                .addConverterFactory(ScalarsConverterFactory.create())
                .build();
        Service service = retrofitGithub.create(Service.class);
        return service;
    }
}
