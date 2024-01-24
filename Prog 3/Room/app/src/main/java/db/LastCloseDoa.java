package db;

import androidx.room.Query;

import org.joda.time.DateTime;

import model.LastClose;

public interface LastCloseDoa {
    @Query("SELECT date FROM LastClose ORDER BY date DESC LIMIT 1")
    DateTime getlastClose();
    void setlastClose(LastClose lastClose);
}
