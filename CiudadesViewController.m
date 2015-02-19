//
//  CiudadesViewController.m
//  Legends
//
//  Created by Marcos García on 20/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CiudadesViewController.h"

@interface CiudadesViewController ()

@end

@implementation CiudadesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)showTweetSheet{
    
    //  Create an instance of the Tweet Sheet
    TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
    
    tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result) {
        switch(result) {
            case TWTweetComposeViewControllerResultCancelled:
                //  This means the user cancelled without sending the Tweet
                break;
            case TWTweetComposeViewControllerResultDone:
                //  This means the user hit 'Send'
                break;
        }
        
        
        //  dismiss the Tweet Sheet 
        dispatch_async(dispatch_get_main_queue(), ^{            
            [self dismissViewControllerAnimated:YES completion:^{
                NSLog(@"Tweet Sheet has been dismissed."); 
            }];
        });
    };
    
    NSString *msj = @"";
    
    NSString *mensaje = [NSString stringWithFormat:@"", msj];
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
    if (![tweetSheet addImage:imagen.image]) 
    {
        //if (![tweetSheet addImage:[UIImage imageNamed:@"cab.png"]]) {
        NSLog(@"Unable to add the image!");
    }
    
    //  Add an URL to the Tweet.  You can add multiple URLs.
    /* if (![tweetSheet addURL:[NSURL URLWithString:@"http://twitter.com/"]]){
     NSLog(@"Unable to add the URL!");
     }*/
    
    //  Presents the Tweet Sheet to the user
    [self presentViewController:tweetSheet animated:YES completion:^{
        NSLog(@"Tweet sheet has been presented.");
    }];
    
 
    
    
}

NSString *webGuanajuato;
NSString *webMorelia;
NSString *webCdMexico;
NSString *webMonterrey;
NSString *webGuadalajara;
NSString *webVeracruz;
NSString *webBajaCalifornia;
NSString *webQueretaro;
NSString *webCoahuila;

NSString *telGuanajuato;
NSString *telMorelia;
NSString *telCdMexico;
NSString *telMonterrey;
NSString *telGuadalajara;
NSString *telVeracruz;
NSString *telBajaCalifornia;
NSString *telQueretaro;
NSString *telCoahuila;

//cargar paginas
-(IBAction)webGuanajuato:(id)sender{
    [self cargarWeb:@"http://www.guanajuato.gob.mx/"];
}
-(IBAction)webMorelia:(id)sender{
    [self cargarWeb:@"http://www.visitmorelia.com/"];
}
-(IBAction)webMexico:(id)sender{
    [self cargarWeb:@"http://www.mexicocity.gob.mx/"];
}
-(IBAction)webMonterrey:(id)sender{
    [self cargarWeb:@"http://turismo.monterrey.gob.mx/"];
}
-(IBAction)webGuadalajara:(id)sender{
    [self cargarWeb:@"http://vive.guadalajara.gob.mx/"];
}
-(IBAction)webVeracruz:(id)sender{
    [self cargarWeb:@"http://www.veracruz.mx/"];
}
-(IBAction)webBajaCalifornia:(id)sender{
    [self cargarWeb:@"http://www.descubrebajacalifornia.com/2012/index.php"];
}
-(IBAction)webQueretaro:(id)sender{
    [self cargarWeb:@"http://www.queretaro.travel/"];
}
-(IBAction)webCoahuila:(id)sender{
    [self cargarWeb:@"http://www.coahuila.gob.mx/index.php/sitios/Promocion_Turistica"];
}


//inician llamadas
-(IBAction)telGuanajuato:(id)sender{
    [self llamarEstado:@"018002215866"];
}
-(IBAction)telMorelia:(id)sender{
    [self llamarEstado:@""];
}
-(IBAction)telMexico:(id)sender{
    [self llamarEstado:@"018000089090"];
}
-(IBAction)telMonterrey:(id)sender{
    [self llamarEstado:@"51028800"];
}
-(IBAction)telGuadalajara:(id)sender{
    [self llamarEstado:@"3338183600"];
}
-(IBAction)telVeracruz:(id)sender{
    [self llamarEstado:@""];
}
-(IBAction)telBajaCalifornia:(id)sender{
    [self llamarEstado:@"6646823367"];
}
-(IBAction)telQueretaro:(id)sender{
    [self llamarEstado:@"018007511742"];
}
-(IBAction)telCoahuila:(id)sender{
    [self llamarEstado:@"8444118500,"];
}





-(void)llamarEstado:(NSString *)numero{
    
    NSString *numerotel = [NSString stringWithFormat:@"tel:%@",numero];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:numerotel]];
    
}



-(void)cargarWeb:(NSString *)pagina{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:pagina]];

    
}

-(IBAction)OcultarMostrar:(id)sender{
    
    
    float valorVista = vistaDesplegable.alpha;
    
    if (valorVista != 0.0) {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vistaDesplegable.alpha = 0.0;
            botonWeb.alpha = 0.0;
            botonTweet.alpha = 0.0;
            botonCall.alpha = 0.0;
            
            labelWeb.alpha = 0.0;
            labelTweet.alpha = 0.0;
            labelCall.alpha = 0.0;
            
        }];
    }
    else {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vistaDesplegable.alpha = 0.4;
            botonWeb.alpha = 1.0;
            botonTweet.alpha = 1.0;
            botonCall.alpha = 1.0;
            
            labelWeb.alpha = 1.0;
            labelTweet.alpha = 1.0;
            labelCall.alpha = 1.0;
            
        }];
    }

    
}

@end
