package intra.listes;

import org.junit.Assert;
import org.junit.Test;

import java.util.Arrays;
import java.util.List;

public class TestExoListe {


    @Test( expected = Exception.class)
    public void testJoursParMoisTropGrand(){
        ExoListe.joursParMois(13);
    }

    @Test
    public void testJoursParMoisAvril(){
        Assert.assertEquals(Arrays.asList(31,28,31,30), ExoListe.joursParMois(4));
    }

    @Test
    public void testJoursParMoisJuillet(){
        Assert.assertEquals(Arrays.asList(31,28,31,30,31,30, 31), ExoListe.joursParMois(7));
    }

    @Test
    public void testJoursParMoisDecembre(){
        Assert.assertEquals(Arrays.asList(31,28,31,30,31,30,31,31, 30, 31, 30, 31), ExoListe.joursParMois(12));
    }

    @Test
    public void testTri(){
        List<Double> liste = Arrays.asList(0.01d, 0.1d, 0.001d, 12d);
        List<Double> attendu = Arrays.asList(0.001d, 0.01d, 0.1d,  12d);
        Assert.assertEquals(attendu, ExoListe.tri(liste));
    }

    @Test
    public void testTriEnonce(){
        List<Double> liste = Arrays.asList(2.5d, 1d, -3d);
        List<Double> attendu = Arrays.asList( -3d, 1d, 2.5d);
        Assert.assertEquals(attendu, ExoListe.tri(liste));
    }

}
