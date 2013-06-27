//
//  ViewController.m
//  ProgressIndicator
//
//  Created by Shubham Kalra on 24/03/13.
//  Copyright (c) 2013 Shubham Kalra. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController
@synthesize progressIndicator;
@synthesize loadLabel;


-(IBAction)ClickMe:(id)sender
{
    [progressIndicator setHidden:false];
    [self incrementProgress];
    [loadLabel setHidden:false];
        
}

-(void)incrementProgress
{
    
    
    if (progressIndicator.progress <1.0f)
    {
        [progressIndicator setProgress:progressIndicator.progress+.05f];

        
        [self performSelector:@selector(incrementProgress) withObject:nil afterDelay:.5];
        
    }
    else{
        NSLog(@"Yes We have Done it!!!");
        NSLog(@"My Progress Indicator is ready..");
        [progressIndicator setHidden:true];
        [progressIndicator setProgress:0.05f];
        
        [loadLabel setHidden:true];
        
    }
    
    
}
- (void)viewDidLoad
{
    [progressIndicator setHidden:true];

    [progressIndicator setProgress:.05f];
    [loadLabel setHidden:true];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
