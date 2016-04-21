package com.codeclan.rpmonteiro;

public class VehicleNotFoundException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public VehicleNotFoundException() {
		super("There was a problem locating vehicle.");
	}
	
	public VehicleNotFoundException(Vehicle v) {
		super("There was a problem locating vehicle: " + v);
	}
}
