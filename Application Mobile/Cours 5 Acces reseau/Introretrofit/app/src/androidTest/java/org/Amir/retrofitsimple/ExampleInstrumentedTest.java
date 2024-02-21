package org.Amir.retrofitsimple;

import android.util.Log;

import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.Amir.retrofitsimple.http.RetrofitUtil;
import org.Amir.retrofitsimple.http.Service;
import org.Amir.retrofitsimple.transfer.Utilisateur;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;

import retrofit2.Call;
import retrofit2.Response;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ExampleInstrumentedTest {
    @Test
    public void TestSimple() throws IOException {
        Service service = RetrofitUtil.get();
        Call<String> call = service.listRepos("Amirhall");
        Response<String> response = call.execute();
        String resultat = response.body();
        Log.i("retrofit",resultat);

    }
    @Test
    public void TestSimpleUtilisateur() throws IOException {
        Service service = RetrofitUtil.get();
        Call<String> call = service.utilisateurString("Amirhall");
        Response<String> response = call.execute();
        String resultat = response.body();
        Log.i("retrofit",resultat);
    }
    @Test
    public void TestSimpleUtilisateurStructure() throws IOException {
        Service service = RetrofitUtil.get();
        Call<Utilisateur> call = service.utilisateur("Amirhall");
        Response<Utilisateur> response = call.execute();
        Utilisateur resultat = response.body();
        Log.i("retrofit",resultat.toString());
    }

}
