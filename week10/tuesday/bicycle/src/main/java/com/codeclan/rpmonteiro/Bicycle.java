package com.codeclan.rpmonteiro;

public class Bicycle extends Vehicle {

	private int currentSpeed;
	private String name;
	private int currentGear;
	private int gears;
	private int id;
	
	public Bicycle() {
		this(new Bell());
		gears = 21;
		numberOfWheels = 2;
		colour = "Tomato";
	}
	
	private Bicycle(Ringable ringer) {
		super(ringer);
	}
	
	public int getId() {
		return id;
	}
	
	protected void setId(int id) {
		this.id = id;
	}
	
	public Bicycle(String colour) {
		this();
		this.colour = colour;
	}
	
	public int getCurrentSpeed() {
		return currentSpeed;
	}
	
	public void setCurrentSpeed(int speed) {
		this.currentSpeed = speed;
	}

	public int getNumberOfWheels() {
		return numberOfWheels;
	}

	public void setNumberOfWheels(int numberOfWheels) {
		this.numberOfWheels = numberOfWheels;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCurrentGear() {
		return currentGear;
	}

	public void setCurrentGear(int currentGear) {
		this.currentGear = currentGear;
	}

	public int getGears() {
		return gears;
	}

	public void setGears(int gears) {
		this.gears = gears;
	}
	
	public void speedUp(int newSpeed) {
		currentSpeed += newSpeed;
	}

	@Override
	public String toString() {
		return "Bicycle: {colour: " + colour + ", Gears: " + gears + "}";
	}
}
