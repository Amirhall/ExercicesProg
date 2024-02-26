package org.amir.retrofitsimple.http;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface ServiceGithub {
    @GET("users/{utilisateur}/repos")
    Call<String> listRepos(@Path("utilisateur") String utilisateur);

}
