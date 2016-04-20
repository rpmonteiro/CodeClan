package com.codeclan.rpmonteiro;

import java.util.ArrayList;

public class CarPark {

	private ArrayList<Vehicle> carPark;
	
	public CarPark() {
		carPark = new ArrayList<>(10);
	}
	
	public boolean park(Vehicle v) {
		return carPark.add(v);
	}
	
	public ArrayList<Vehicle> getCarPark() {
		return carPark;
	}
	
	public boolean exit(Vehicle v) throws VehicleNotFoundException {
		for(Vehicle parkedVehicle : carPark) {
			if (parkedVehicle.getRegistration().equals(v.getRegistration())) {
				carPark.remove(v);
				return true;
			}
		}
		throw new VehicleNotFoundException(v);
	}
	
}
