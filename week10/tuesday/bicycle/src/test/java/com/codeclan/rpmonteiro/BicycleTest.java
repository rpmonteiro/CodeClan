package com.codeclan.rpmonteiro;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Unit test for simple App.
 */
public class BicycleTest 
{
   @Test
   public void testBicycle() {
	   Bicycle b = new Bicycle();
	   assertTrue(b.getCurrentSpeed() == 0);
   }
   
   @Test
   public void testSpeedUp() {
	   Bicycle b = new Bicycle();
	   int newSpeed = 10;
	   b.speedUp(newSpeed);
	   assertTrue(b.getCurrentSpeed() == newSpeed );
   }
   
   @Test
   public void testDisplayBicycle() {
	   Bicycle b = new Bicycle();
	   System.out.println(b);
   }
   
   @Test
   public void testNumberOfWheels() {
	  Bicycle b = new Bicycle();
	  assertEquals(b.getGears(), 21);
   }
   
   @Test
   public void testBicycleWarning() {
	   Bicycle b = new Bicycle();
	   assertEquals(b.giveWarning(), "RingRing!");
   }
   
}