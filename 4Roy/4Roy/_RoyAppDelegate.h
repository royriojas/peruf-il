//
//  _RoyAppDelegate.h
//  4Roy
//
//  Created by Radu Lazar on 3/29/11.
//  Copyright 2011 CodeSignum. All rights reserved.
//

#import <UIKit/UIKit.h>

@class _RoyViewController;

@interface _RoyAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet _RoyViewController *viewController;

@end
