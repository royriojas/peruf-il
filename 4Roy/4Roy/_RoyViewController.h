//
//  _RoyViewController.h
//  4Roy
//
//  Created by Radu Lazar on 3/29/11.
//  Copyright 2011 CodeSignum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _RoyViewController : UIViewController {
    IBOutlet UIWebView *wv;
    
}

@property (nonatomic, assign) UIWebView *wv;

- (IBAction) refreshAction:(id) sender;

@end
