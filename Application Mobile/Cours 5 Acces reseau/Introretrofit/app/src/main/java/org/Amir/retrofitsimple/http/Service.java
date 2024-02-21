package org.Amir.retrofitsimple.http;

import org.Amir.retrofitsimple.transfer.Utilisateur;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;


public interface Service {
    @GET("users/{utilisateur}/repos")
    Call<String> listRepos(@Path("utilisateur") String utilisateur);
    @GET("users/{utilisateur}/repos")
    Call<String> utilisateurString(@Path("utilisateur") String utilisateur);
    @GET("users/{utilisateur}")
    Call<Utilisateur> utilisateur(@Path("utilisateur") String utilisateur);
}
