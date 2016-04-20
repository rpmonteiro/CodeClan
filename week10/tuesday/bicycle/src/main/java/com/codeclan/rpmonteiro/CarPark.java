package com.codeclan.rpmonteiro;

import java.util.ArrayList;

public class CarPark {

	private ArrayList<Vehicle> carPark;
	
	public CarPark() {
		carPark = new ArrayList<>(10);
	}
	
	public int park(Vehicle v) {
		carPark.add(v);
	}
		
}
