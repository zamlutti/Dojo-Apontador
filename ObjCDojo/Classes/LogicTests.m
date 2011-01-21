//
//  LogicTests.m
//  ObjCDojo
//
//  Created by Bruno Corrêa on 14/01/11.
//  Copyright 2011 LBSLocal. All rights reserved.
//

#import "LogicTests.h"
#import "Program.h"

@implementation LogicTests

- (void) testPass {
	
	Program *p = [[Program alloc] init];
	
	STAssertEquals([p sacolas:1 comProdutos:@"leite"], 1, nil);
	
	STAssertEquals([p sacolas:1 comProdutos:@"leite,cafe"], 2, nil);
	
	STAssertEquals([p sacolas:2 comProdutos:@"leite,cafe"], 2, nil);
	
	STAssertEquals([p sacolas:1 comProdutos:@"cafe,cafe"], 2, nil);

	STAssertEquals([p sacolas:2 comProdutos:@"leite,cafe,queijo"], 3, nil);
	STAssertEquals([p sacolas:2 comProdutos:@"leite,leite,queijo"], 2, nil);
	STAssertEquals([p sacolas:2 comProdutos:@"cafe,cafe,queijo"], 2, nil);
	STAssertEquals([p sacolas:2 comProdutos:@"cafe,queijo,queijo"], 2, nil);
	
	STAssertEquals([p sacolas:2 comProdutos:@"cafe,queijo,cafe,queijo"], 2, nil);
	STAssertEquals([p sacolas:4 comProdutos:@"cafe,queijo,cafe,queijo,pao,camisinha,cafe,queijo,queijo"], 4, nil);
	STAssertEquals([p sacolas:3 comProdutos:@"cafe,queijo,cafe,queijo,pao,camisinha,cafe,queijo,queijo"], 5, nil);
	STAssertEquals([p sacolas:3 comProdutos:@"cafe,cafe,cafe,cafe,pao,camisinha,cafe,queijo,queijo"], 5, nil);
	
	
	[p release];
	
}





@end
