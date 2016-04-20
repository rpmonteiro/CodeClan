package com.codeclan.ps;

public abstract class Vehicle {
	
	protected int numberOfWheels;
	protected String model;
	protected String registration;
	protected int maximumSpeed;
	protected String colour;
	protected int maxOccupancy;
	protected int speed;
	
	protected Vehicle() {
		speed = 0;
	}

	protected int getNumberOfWheels() {
		return numberOfWheels;
	}

	protected void setNumberOfWheels(int numberOfWheels) {
		this.numberOfWheels = numberOfWheels;
	}

	protected String getModel() {
		return model;
	}

	protected void setModel(String model) {
		this.model = model;
	}

	protected String getRegistration() {
		return registration;
	}

	protected void setRegistration(String registration) {
		this.registration = registration;
	}

	protected int getMaximumSpeed() {
		return maximumSpeed;
	}

	protected void setMaximumSpeed(int maximumSpeed) {
		this.maximumSpeed = maximumSpeed;
	}

	protected String getColour() {
		return colour;
	}

	protected void setColour(String colour) {
		this.colour = colour;
	}

	protected int getMaxOccupancy() {
		return maxOccupancy;
	}

	protected void setMaxOccupancy(int maxOccupancy) {
		this.maxOccupancy = maxOccupancy;
	}

	protected int getSpeed() {
		return speed;
	}

	protected void setSpeed(int speed) {
		this.speed = speed;
	}
	
	@Override
	public String toString() {
		return "Vehicle: {Registration: " + registration + " Model: " + model + "}";
	}
	
}
