//
//  ObjCDojoAppDelegate.h
//  ObjCDojo
//
//  Created by Bruno Corrêa on 14/01/11.
//  Copyright 2011 LBSLocal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjCDojoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

