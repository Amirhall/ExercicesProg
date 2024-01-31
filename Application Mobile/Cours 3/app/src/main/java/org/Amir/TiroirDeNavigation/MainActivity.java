package org.Amir.TiroirDeNavigation;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;

import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;

import com.google.android.material.navigation.NavigationView;

import org.Amir.TiroirDeNavigation.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {
    private ActivityMainBinding binding;
    private ActionBarDrawerToggle abt;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        View view = binding.getRoot();
        setContentView(view);

        DrawerLayout dl = binding.drawerLayout;
        NavigationView nv = binding.navView;

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        abt = new ActionBarDrawerToggle(this,dl,R.string.nav_open,R.string.nav_close){

        };
        dl.addDrawerListener(abt);
        abt.syncState();
        // a partir d'ici le hamburger s'affiche
        nv.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                if (item.getTitle().equals("Accueil")){
                   System.exit(0);
                }
                if (item.getTitle().equals("Projet")){
                    Toast.makeText(MainActivity.this,"Amir", Toast.LENGTH_SHORT).show();
                }
                if (item.getTitle().equals("Déconnexion")){
                    Log.i("log", "onNavigationItemSelected: succes");
                }
                return false;
            }
        });


    }
    // a partir d'ici le menu s'ouvre
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        if (abt.onOptionsItemSelected(item)){
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onPostCreate(@Nullable Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        abt.syncState();
    }
//
//    @Override
//    public void onConfigurationChanged(@NonNull Configuration newConfig) {
//        abt.onConfigurationChanged(newConfig);
//        super.onConfigurationChanged(newConfig);
//    }

}