package com.codeclan.ps;

public class BassGuitar {

	private String name;
	private int numberOfStrings;
	
	public BassGuitar() {
		name = "BassGuitar";
		numberOfStrings = 5;
	}
	
	public void play() {
		System.out.println("I am a " + name + " and I have " + numberOfStrings + " strings");
	}
}
