package com.codeclan.rpmonteiro;

import org.junit.*;
import static org.junit.Assert.*;

public class CarParkTest {
	
	Vehicle v;
	CarPark cp;
	
	@Before
	public void setup() {
		v = new Car("A12 3DF");
		cp = new CarPark();
	}

	@Test
	public void testExitCarSuccess() {
		cp.park(v);
		assertTrue(cp.getCarPark().size() == 1);
		boolean hasExited = false;
		try {
			hasExited = cp.exit(v);
		} catch (VehicleNotFoundException e) {
			System.err.println(e.getMessage());
			fail("Vehicle not found");
		}
		assertTrue(hasExited);
	}
	
	@Test(expected = VehicleNotFoundException.class)
	public void textExitUnsuccessful() throws VehicleNotFoundException {
		boolean hasExited = false;
		try {
			cp.exit(v);
			fail("Exception wasn't thrown");
		} catch (VehicleNotFoundException e) {
			System.err.println(e.getMessage());
			throw new VehicleNotFoundException(v);
		}
		assertTrue(hasExited);
	}
}
