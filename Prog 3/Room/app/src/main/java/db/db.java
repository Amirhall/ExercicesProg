package db;

import androidx.room.Database;
import androidx.room.RoomDatabase;

import model.LastClose;


@Database(entities = {LastClose.class}, version = 1)
public abstract class DB extends RoomDatabase {
public abstract  LastCloseDoa getDao();
}

