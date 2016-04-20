package com.codeclan.ps;

public class BassGuitar extends Instrument {

	private String name;
	private int numberOfStrings;
	
	public BassGuitar() {
		name = "Bass Guitar";
		numberOfStrings = 5;
	}
	
	@Override
	public String play() {
		return "I'm a " + name + " and I have " + numberOfStrings + " strings.";
	}
}
