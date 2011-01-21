//
//  Program.m
//  ObjCDojo
//
//  Created by Bruno Corrêa on 21/01/11.
//  Copyright 2011 LBSLocal. All rights reserved.
//

#import "Program.h"


@implementation Program



-(int) sacolas:(int)sac comProdutos:(NSString *)prod {
	NSArray *lista = [prod componentsSeparatedByString:@","];
	
	int nsacolas = 1;// =]
	

	if(sac == 1) {
		return [lista count];
	}
	

	NSArray *ordlist = [lista sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
	
	int sacolaAtual = 0;
	int tamanho = [ordlist count]
	
	for (int i = 0; i < tamanho - 1; i++)
	{
		if ((![[ordlist objectAtIndex:i] isEqualToString:
			   [ordlist objectAtIndex:i+1]]) 
			){
			nsacolas++;
			sacolaAtual = 0;
		}
		else {
			sacolaAtual++;
			if (sacolaAtual > sac) {
				nsacolas++;
				sacolaAtual = 0;
			}
		}

	}
	if ((![[ordlist objectAtIndex:tamanho-1] isEqualToString:
		   [ordlist objectAtIndex:tamanho]]) 
		){
		nsacolas++;
		sacolaAtual = 0;
	}
	else {
		sacolaAtual++;
		if (sacolaAtual > sac) {
			nsacolas++;
			sacolaAtual = 0;
		}
	}
	
		
	
	return nsacolas;
	
}


@end
