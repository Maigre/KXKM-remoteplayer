//
//  remoteplayv2ViewController.m
//  remoteplayv2
//
//  Created by Pierre Hoezelle, Thomas Bohl, Jeremie Forge
//  Copyright 2011 KXKM. Creative Commons BY-NC-SA.
//

#import "remoteplayv2ViewController.h"
#import "remoteplayv2AppDelegate.h"

@implementation remoteplayv2ViewController

@synthesize infostate,infoctrl,infoscreen,infoip,infomovie,infoserver,infoname, mirButtonauto;


//mir switch 
- (IBAction)mir:(id)sender{
    remoteplayv2AppDelegate *appDelegate = (remoteplayv2AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    [appDelegate.disPlay mir:(![appDelegate.disPlay mired])];
}

//envoi message sos à la régie
-(IBAction)sos:(id)sender{
    remoteplayv2AppDelegate *appDelegate = (remoteplayv2AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    [appDelegate.comPort sendSOS];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
