def romanToNumerals(roman):
	roman_dict = {
		'I':1, 'V':5, 'X':10, 'L':50, 'C': 100, 'D': 500, 'M':1000
	}
		
	z = 0	
	aux = 0
	if roman == 'IV':
		return 4
	
	for x in range(0,len(roman)-1):
		if roman_dict[roman[x]] >= roman_dict[roman[x+1]]:
			z += roman_dict[roman[x]]
		if roman_dict[roman[x]] < roman_dict[roman[x+1]]:
			z -= roman_dict[roman[x]]
		
		
		
	z += roman_dict[roman[-1]]
	return z
	
	if roman.find(roman[0]) > -1:
		return len(roman) * roman_dict[roman[0]]
		
		