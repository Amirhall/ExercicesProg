package intra.programmation;

import org.junit.Assert;
import org.junit.Test;

public class TestExoProgrammation {

    @Test( expected = IllegalArgumentException.class)
    public void testTropGrand(){
        ExoProgrammation.compteChiffre(10, 77777);
    }

    @Test( expected = IllegalArgumentException.class)
    public void testTroppetit(){
        ExoProgrammation.compteChiffre(-1, 77777);
    }

    @Test
    public void testEnonce(){
        int res = ExoProgrammation.compteChiffre(5, 4567950);
        Assert.assertEquals(2, res);
    }

}
