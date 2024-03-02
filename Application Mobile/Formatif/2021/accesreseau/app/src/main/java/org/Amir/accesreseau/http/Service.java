package org.Amir.accesreseau.http;

import org.Amir.accesreseau.transfer.Utilisateur;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface Service {
        @GET("exam/{annee}/{mois}/{jour}")
        Call<Utilisateur> annee(@Path("annee") String annee);
        Call<Utilisateur> jour(@Path("jour") String jour);
        Call<Utilisateur> mois(@Path("mois") String mois);
}
