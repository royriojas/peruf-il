//
//  _RoyViewController.m
//  4Roy
//
//  Created by Radu Lazar on 3/29/11.
//  Copyright 2011 CodeSignum. All rights reserved.
//

#import "_RoyViewController.h"

@implementation _RoyViewController

- (IBAction) refreshAction:(id) sender {
    [wv loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://10.9.8.119/contentmanager/cm.html"]]];
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
	NSString *orientation;
	switch (toInterfaceOrientation) {
		case UIInterfaceOrientationPortrait:
			orientation = @"portrait";
			break;
		case UIInterfaceOrientationPortraitUpsideDown:
			orientation = @"portrait";
			break;
		case UIInterfaceOrientationLandscapeLeft:
			orientation = @"landscape";
			break;
		case UIInterfaceOrientationLandscapeRight:
			orientation = @"landscape";
			break;
		default:
			break;
	}
    [wv stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.jsToCocoa.triggerOrientationWillChange('%@');", orientation]];
}

-(void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    UIInterfaceOrientation currentOrientation = self.interfaceOrientation;
    NSString *orientation;
	switch (currentOrientation) {
		case UIInterfaceOrientationPortrait:
			orientation = @"portrait";
			break;
		case UIInterfaceOrientationPortraitUpsideDown:
			orientation = @"portrait";
			break;
		case UIInterfaceOrientationLandscapeLeft:
			orientation = @"landscape";
			break;
		case UIInterfaceOrientationLandscapeRight:
			orientation = @"landscape";
			break;
		default:
			break;
	}
    [wv stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.jsToCocoa.triggerOrientationChange('%@');", orientation]];
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)webViewDidStartLoad:(UIWebView *)webView {

}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [wv setDelegate:self];
    [wv loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://10.9.8.132/contentmanager/cm.html"]]];

}


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
	return YES;
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@synthesize wv;

@end
