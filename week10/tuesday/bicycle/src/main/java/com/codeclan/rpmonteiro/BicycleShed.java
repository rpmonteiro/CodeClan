package com.codeclan.rpmonteiro;

import java.util.ArrayList;

public class BicycleShed {

	ArrayList<Bicycle> myBicycleShed = new ArrayList<>();
	
	public BicycleShed() {
		myBicycleShed = new ArrayList<>();
	}
	
	public void addBicycle(Bicycle b) {
		myBicycleShed.add(b);
	}
	
	public void removeBicycle(Bicycle b) {
		for (int i = 0; i < myBicycleShed.size(); i++) {
			Bicycle currentBicycle = myBicycleShed.get(i);
			if(currentBicycle.getId() == b.getId()) {
				myBicycleShed.remove(currentBicycle);
			}
		}
	}
	
	public void removeBicycle(int index) {
		myBicycleShed.remove(index);
	}
	
}
