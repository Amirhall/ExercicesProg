package org.Amir.retrofitsimple.http;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;


public interface Service {
    @GET("users/{utilisateur}/repos")
    Call<String> listRepos(@Path("utilisateur") String utilisateur);
}
