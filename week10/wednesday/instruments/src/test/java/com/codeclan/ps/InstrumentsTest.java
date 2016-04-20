package com.codeclan.ps;

import org.junit.*;
import static org.junit.Assert.*;

public class InstrumentsTest {

	@Test
	public void testInstruments() {
		Instrument myBassGuitar = new BassGuitar();
		assertTrue(myBassGuitar.play().equals("I'm a Bass Guitar and I have 5 strings."));
	}
	
}
