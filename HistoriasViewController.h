//
//  HistoriasViewController.h
//  Legends
//
//  Created by Marcos García on 20/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUi.h> 

@interface HistoriasViewController : UIViewController <MFMailComposeViewControllerDelegate>{
    
    IBOutlet UITextView *textLegenda01;    
    IBOutlet UITextView *textLegenda02;
    IBOutlet UITextView *textLegenda03;
    IBOutlet UITextView *textLegenda04;
    IBOutlet UITextView *textLegenda05;
    IBOutlet UITextView *textLegenda06;
    IBOutlet UITextView *textLegenda07;
    IBOutlet UITextView *textLegenda08;
    IBOutlet UITextView *textLegenda09;
    IBOutlet UITextView *textLegenda10;
    IBOutlet UITextView *textLegenda11;
    IBOutlet UITextView *textLegenda12;
    
    IBOutlet UITextView *textoLeyendaEnviar;
    
}

-(IBAction)TraslateEsp01:(id)sender;
-(IBAction)TraslateEsp02:(id)sender;
-(IBAction)TraslateEsp03:(id)sender;
-(IBAction)TraslateEsp04:(id)sender;
-(IBAction)TraslateEsp05:(id)sender;
-(IBAction)TraslateEsp06:(id)sender;
-(IBAction)TraslateEsp07:(id)sender;
-(IBAction)TraslateEsp08:(id)sender;
-(IBAction)TraslateEsp09:(id)sender;
-(IBAction)TraslateEsp10:(id)sender;
-(IBAction)TraslateEsp11:(id)sender;
-(IBAction)TraslateEsp12:(id)sender;

-(IBAction)TraslateIng01:(id)sender;
-(IBAction)TraslateIng02:(id)sender;
-(IBAction)TraslateIng03:(id)sender;
-(IBAction)TraslateIng04:(id)sender;
-(IBAction)TraslateIng05:(id)sender;
-(IBAction)TraslateIng06:(id)sender;
-(IBAction)TraslateIng07:(id)sender;
-(IBAction)TraslateIng08:(id)sender;
-(IBAction)TraslateIng09:(id)sender;
-(IBAction)TraslateIng10:(id)sender;
-(IBAction)TraslateIng11:(id)sender;
-(IBAction)TraslateIng12:(id)sender;

-(IBAction)sendMail:(id)sender;


@end
