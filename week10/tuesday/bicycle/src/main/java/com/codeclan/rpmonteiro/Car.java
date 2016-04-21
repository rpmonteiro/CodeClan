package com.codeclan.rpmonteiro;

public class Car extends Vehicle {

	private int numberOfDoors;
	
	public Car() {
		this(new Horn());
		setNumberOfDoors(5);
	}
	
	public Car(Ringable ringer) {
		super();
		this.ringer = ringer;
	}
	
	public Car(String registration) {
		this.registration = registration;
	}

	public int getNumberOfDoors() {
		return numberOfDoors;
	}

	public void setNumberOfDoors(int numberOfDoors) {
		this.numberOfDoors = numberOfDoors;
	}
}
