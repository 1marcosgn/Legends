//
//  MapasViewController.h
//  Legends
//
//  Created by Marcos García on 20/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "mapAnnotation.h"
#import "Mapann.h"

@interface MapasViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, MKMapViewDelegate>{
    
    IBOutlet MKMapView *mapaLeyendas;
    
    UIPickerView *picker;
    NSArray *pickerData; 
    
    IBOutlet UIView *vista;
    
}

@property (nonatomic,retain)IBOutlet MKMapView *mapaLeyendas;   

@property (nonatomic, retain) IBOutlet UIPickerView *picker;

@property (nonatomic, retain) NSArray *pickerData;

-(IBAction)MostrarAnimado:(id)sender;

-(IBAction)tipoMapaPlazas:(id)sender;

@end
