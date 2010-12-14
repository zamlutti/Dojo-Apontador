package br.com.apontador.dojo.bowling;

import java.util.HashMap;

public class Bowling {
	public int calcula(String pontos) {
		int contador = 0;
		
		for(int i=0; i<pontos.length();i++) {
			String s = pontos.substring(i, i+1);
			
			if ("-".equals(s))
				continue;
			if ("X".equals(s)){
				contador += 10;
				
	
				
				//se a proxima string existir
				if(i < pontos.length() - 2) {
					String s_proximo = pontos.substring(i+1, i+2);
					String s_proximo_plus = pontos.substring(i+2, i+3);

					if(s_proximo.isEmpty() == false && s_proximo_plus.isEmpty() == false) {
						
						contador += Integer.parseInt(s_proximo) + Integer.parseInt(s_proximo_plus);
						
					}
				}
				
				continue;
			}
			if ("/".equals(s)){
				String s_anterior = pontos.substring(i-1, i);
				int x;
				
				if (s_anterior.equals("-") ) {
					
					x = 0;
				} else {
					x= Integer.parseInt(s_anterior);
					
				}
				
				contador += (10 - x);
				
				//se a proxima string existir
				if(i < pontos.length() - 1) {
					String s_proximo = pontos.substring(i+1, i+2);
					if(s_proximo.isEmpty() == false) {
						
						contador += Integer.parseInt(s_proximo);
						
					}
				}
				
				continue;
			}
			
			contador += Integer.parseInt(pontos.substring(i, i+1));
		}
		return contador;
	}

	public int getValue(String string, int pos) {
		HashMap <String, Integer> points = new HashMap<String, Integer>();
		String 	sub = string.substring(pos, pos+1);
		
		points.put("X", 10);
		points.put("-", 0);
		
		if (string.length() > pos) {
			if (points.containsKey(sub)) {
				return points.get(sub);
			}
			
			return Integer.parseInt(sub);
		}
		
		return -1;
		
	} 
}
