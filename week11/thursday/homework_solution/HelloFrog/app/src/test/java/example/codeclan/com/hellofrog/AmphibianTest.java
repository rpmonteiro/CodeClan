package example.codeclan.com.hellofrog;

import org.junit.Test;
import static org.junit.Assert.*;
/**
 * Created by sandy on 25/04/2016.
 */
public class AmphibianTest {
    @Test
    public void superAwesomeTest() {
        Amphibian amphibian = new Amphibian("Kermit");
        assertEquals("Kermit", amphibian.getName());
    }

    @Test
    public void newAmphibian() {
        Amphibian amphibian = new Amphibian("Baron Greenback", "Toad");
        assertEquals("Toad", amphibian.getSpecies());
    }

    @Test
    public void setName() {
        Amphibian amphibian = new Amphibian("Kermit");
        amphibian.setName("Robin");
        assertEquals("Robin", amphibian.getName());
    }

    @Test
    public void setSpecies() {
        Amphibian amphibian = new Amphibian("Kermit", "Frog");
        amphibian.setSpecies("Toad");
        assertEquals("Toad", amphibian.getSpecies());
    }

    @Test
    public void getNumLegs() {
        Amphibian amphibian = new Amphibian("Kermit", "Frog");

        assertEquals(4, amphibian.getNumLegs());
    }

}
