//
//  ViewController.h
//  ProgressIndicator
//
//  Created by Shubham Kalra on 24/03/13.
//  Copyright (c) 2013 Shubham Kalra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    IBOutlet UIProgressView *progressIndicator;
   IBOutlet UILabel *loadLabel;
    
    
    
}

@property (nonatomic,retain)  IBOutlet UIProgressView *progressIndicator;

@property (nonatomic,retain) IBOutlet UILabel *loadLabel;



-(IBAction)ClickMe:(id)sender;

-(void)incrementProgress;



@end
