//
//  CiudadesViewController.h
//  Legends
//
//  Created by Marcos García on 20/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface CiudadesViewController : UIViewController{
    
    IBOutlet UIImageView *imagen;
    
    IBOutlet UIButton *botonTweet;
    IBOutlet UIButton *botonWeb;
    IBOutlet UIButton *botonCall;
    
    IBOutlet UILabel *labelTweet;
    IBOutlet UILabel *labelWeb;
    IBOutlet UILabel *labelCall;
    
    IBOutlet UIView *vistaDesplegable;
    
    
}


- (IBAction)showTweetSheet;

-(IBAction)webGuanajuato:(id)sender;
-(IBAction)webMorelia:(id)sender;
-(IBAction)webMexico:(id)sender;
-(IBAction)webMonterrey:(id)sender;
-(IBAction)webGuadalajara:(id)sender;
-(IBAction)webVeracruz:(id)sender;
-(IBAction)webBajaCalifornia:(id)sender;
-(IBAction)webQueretaro:(id)sender;
-(IBAction)webCoahuila:(id)sender;

-(IBAction)telGuanajuato:(id)sender;
-(IBAction)telMorelia:(id)sender;
-(IBAction)telMexico:(id)sender;
-(IBAction)telMonterrey:(id)sender;
-(IBAction)telGuadalajara:(id)sender;
-(IBAction)telVeracruz:(id)sender;
-(IBAction)telBajaCalifornia:(id)sender;
-(IBAction)telQueretaro:(id)sender;
-(IBAction)telCoahuila:(id)sender;

-(IBAction)OcultarMostrar:(id)sender;

@end
