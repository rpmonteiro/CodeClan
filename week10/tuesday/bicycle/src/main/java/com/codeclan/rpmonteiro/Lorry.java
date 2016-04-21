package com.codeclan.rpmonteiro;

public class Lorry extends Vehicle {

	int maxTonnage;
	int height;
	
	public Lorry() {
		this(new Horn());
		maxTonnage = 2;
		height = 3;
	}
	
	public Lorry(Ringable ringer) {
		super();
		this.ringer = ringer;
	}

	protected int getMaxTonnage() {
		return maxTonnage;
	}

	protected void setMaxTonnage(int maxTonnage) {
		this.maxTonnage = maxTonnage;
	}

	protected int getHeight() {
		return height;
	}

	protected void setHeight(int height) {
		this.height = height;
	}
}
