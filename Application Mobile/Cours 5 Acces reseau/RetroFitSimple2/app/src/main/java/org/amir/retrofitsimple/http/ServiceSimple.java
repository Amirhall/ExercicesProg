package org.amir.retrofitsimple.http;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface ServiceSimple {
    @GET
    Call<String> nombre(String utilisateur);
}
