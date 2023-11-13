package model;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

import org.joda.time.DateTime;

@Entity
public class LastClose {
    @PrimaryKey(autoGenerate = true)
    public int uid;
    @ColumnInfo(name = "date")
    public DateTime time;
}

