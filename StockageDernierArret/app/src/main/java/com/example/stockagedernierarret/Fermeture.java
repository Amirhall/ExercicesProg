package com.example.stockagedernierarret;

import androidx.room.Entity;
import androidx.room.PrimaryKey;

    @Entity
    public class Fermeture {
        @PrimaryKey
        public int id;

        public String pause;
        public String stop;
        public String destroy;
    }

