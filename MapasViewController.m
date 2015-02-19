//
//  MapasViewController.m
//  Legends
//
//  Created by Marcos García on 20/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapasViewController.h"
#import "mapAnnotation.h"

@interface MapasViewController ()

@end

@implementation MapasViewController

@synthesize mapaLeyendas;

@synthesize pickerData;

@synthesize picker;

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
	
    pickerData = [[NSArray alloc] initWithObjects:@"Callejón del Muerto",@"El convento de Hermosillo",@"El puente de Dios",@"La Nahual de Coyoacán",@"Panfilo García",@"Barrio Antiguo, Monterrey",@"El Charro Negro",@"La Rumorosa",@"Mexicali", nil];


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

#pragma mark - PickerView Data Sources Methods

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [pickerData count];
    
}



#pragma mark - PickerView Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [pickerData objectAtIndex:row];  
    
}

int lugar = 0;

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    if ([[pickerData objectAtIndex:row] isEqualToString:@"Holiday Inn"]) {
        
        lugar = 1;
        
        NSLog(@"hola");
        
        //[self.ImageView setImage:[UIImage imageNamed:@"green.png"]];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Callejón del Muerto"]) {
        
        [self UbicarAnnotation:21.207229 longitud:-97.740211 titulo:@"Callejón del Muerto"];
        
        //[self UbicarAnnotation:37.785834 longitud:-122.406417 titulo:@"Callejón del Muerto"];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"El convento de Hermosillo"]) {
        
       [self UbicarAnnotation:29.076313 longitud:-110.948267 titulo:@"El convento de Hermosillo"];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"El puente de Dios"]) {
        
        [self UbicarAnnotation:29.088071 longitud:-110.968566 titulo:@"El puente de Dios"];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"La Nahual de Coyoacán"]) {
        
        [self UbicarAnnotation:19.349959 longitud:-99.161611 titulo:@"La Nahual de Coyoacán"];
        
    }
    if ([[pickerData objectAtIndex:row] isEqualToString:@"Panfilo García"]) {
        
        [self UbicarAnnotation:19.3985 longitud:-99.208206 titulo:@"Panfilo García"];
                
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Barrio Antiguo, Monterrey"]) {
        
        [self UbicarAnnotation:25.664892 longitud:-100.310669 titulo:@"Barrio Antiguo"];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"El Charro Negro"]) {
        
        [self UbicarAnnotation:19.497664 longitud:-99.716034 titulo:@"El Charro Negro"];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"La Rumorosa"]) {
        
        [self UbicarAnnotation:32.603519 longitud:-116.073303 titulo:@"La Rumorosa"];
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Mexicali"]) {
        
        [self UbicarAnnotation:32.645301 longitud:-115.445194 titulo:@"Mexicali"];
        
    }
    
}

-(IBAction)MostrarAnimado:(id)sender{
    
    
    float valorVista = vista.alpha;
    
    if (valorVista == 1.0) {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 0.0;
                        
        }];
    }
    else {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 1.0;
            
            
        }];
    }
    
    
}

-(IBAction)tipoMapaPlazas:(id)sender{
    
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            mapaLeyendas.mapType=MKMapTypeHybrid;
            break;
        case  1:
            mapaLeyendas.mapType=MKMapTypeSatellite;
            break;
        case 2:
            mapaLeyendas.mapType=MKMapTypeStandard;
            break;
            
        default:
            break;
    }
    
}




-(void)UbicarAnnotation:(float)latitud longitud:(float)longitud titulo:(NSString *)titulo{
    
    self.mapaLeyendas.delegate = self;
    
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude= latitud;
    regionHolidayInn.center.longitude= longitud;
    regionHolidayInn.span.longitudeDelta=0.016;
    regionHolidayInn.span.latitudeDelta=0.016;
    [mapaLeyendas setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title = titulo;
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaLeyendas addAnnotation:annHolidayInn]; 
    
    
}



//Poner imagen
- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation{
    
    
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    NSString *annotationIdentifier = @"PinViewAnnotation";
    
    Mapann *pinView = (Mapann *) [mapaLeyendas dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
    if (!pinView)
    {
        pinView = [[Mapann alloc] initWithAnnotation:annotation reuseIdentifier:annotationIdentifier];
        
        
        
        //        [pinView setPinColor:MKPinAnnotationColorGreen];
        //        
        //        pinView.animatesDrop = YES;
        
        pinView.canShowCallout = YES;
        
        
#pragma mark - Imagen TITULO
        //Encabezado e imagen del titulo
        
        UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"top.png"]];
        
        [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
        
        pinView.leftCalloutAccessoryView = houseIconView;
        
        
        ////[houseIconView release];        
        
    }
    
    else
        
    {
        
        pinView.annotation = annotation;
        
    }
    
    return pinView;
    
}




@end
