package com.codeclan.rpmonteiro;

public class Car extends Vehicle {

	private int numberOfDoors;
	
	public Car() {
		super();
		numberOfDoors = 5;
	}
	
	public Car(String registration) {
		this.registration = registration;
	}
}
