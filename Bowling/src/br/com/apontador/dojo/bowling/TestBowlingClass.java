package br.com.apontador.dojo.bowling;

import junit.framework.TestCase;

public class TestBowlingClass extends TestCase {
	public void testTotalDePontos() {
		Bowling b = new Bowling();
		assertEquals(10, b.calcula("1111111111"));
		assertEquals(11, b.calcula("2111111111"));
		assertEquals(8, b.calcula("11111111-"));
		assertEquals(18, b.calcula("11111111X"));
		assertEquals(17, b.calcula("11111111/"));
		assertEquals(17, b.calcula("1111111-/"));
		assertEquals(19, b.calcula("111111-/11"));
		assertEquals(33, b.calcula("111111-/81"));
		assertEquals(34, b.calcula("111111X81"));
	
	}
	
	public void testGetValue() {
		Bowling b = new Bowling();
		assertEquals(10, b.getValue("11111111X", 8));
		assertEquals(1, b.getValue("11111111X", 7));
	}
}