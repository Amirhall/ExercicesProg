package org.amir.retrofitsimple.http;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface Service {
    @GET("exos/long/double/{nombre}")
    Call<String> nombre(@Path("nombre") String nombre);
}
