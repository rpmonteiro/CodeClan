package com.codeclan.ps;

public class Drums extends Instrument {

	private String name;
	
	public Drums() {
		name = "Drums";
	}

	public String play() {
		return "I'm a " + name + ".";
	}
	
	
}
