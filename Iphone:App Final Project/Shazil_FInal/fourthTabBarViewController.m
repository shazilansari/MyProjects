//
//  fourthTabBarViewController.m
//  Shazil Final
//
//  Created by Shazil Ansari  on 12/10/18.
//  Copyright © 2018 student. All rights reserved.
//

#import "AppDelegate.h"
#import "fourthTabBarViewController.h"

@interface fourthTabBarViewController ()

@end
NSString *value;

@implementation fourthTabBarViewController

@synthesize picker;
@synthesize image1;
@synthesize image2, field1, field2, label1, label2, label3, label4;

static NSString *pd[3] = {@"Meters to Feet",@"Feet to Inches",@"Inches to Centimeters"};

- (void)viewDidLoad {
    [super viewDidLoad];
    [image1 setImage:[UIImage imageNamed:@"images.png"]];
    [image2 setImage:[UIImage imageNamed:@"images.jpg"]];
    if (indexValue == 0) {
        self.label3.text = @"Guess Willis Tower Heights!";
        self.label4.text = @"Enter this value for Meters: 527";

    }
    if (indexValue == 1) {
        self.label3.text = @"Guess John Hancock Tower Heights!";
        self.label4.text = @"Enter this value for Meters: 456.9";

    }
    if (indexValue == 2) {
        self.label3.text = @"Guess Burj Khalifa Tower Heights!";
        self.label4.text = @"Enter this value for Meters: 829.8";

    }
    if (indexValue == 3) {
        self.label3.text = @"Guess Cayan Tower Heights!";
        self.label4.text = @"Enter this value for Meters: 306";

    }
    if (indexValue == 4) {
        self.label3.text = @"Guess Empire State Building Heights!";
        self.label4.text = @"Enter this value for Meters: 381";

    }
    if (indexValue == 5) {
        self.label3.text = @"Guess Chrystler Building Heights!";
        self.label4.text = @"Enter this value for Meters: 282";

    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark UIPickerView Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return pd[row];
    
}

-(IBAction)convert:(id)sender{
    if (indexValue == 0) {
    if (value == pd[0]) {
        float inValue = [[field1 text] floatValue];
        float outValue = (inValue * 3.28084);
        [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
    }
    
    if (value == pd[1]) {
        float inValue = [[field1 text] floatValue];
        float outValue = (inValue * 12);
        [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
    }
    
    if (value == pd[2]) {
        float inValue = [[field1 text] floatValue];
        float outValue = (inValue * 2.54);
        [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
    }
    
}
    if (indexValue == 1) {
        if (value == pd[0]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 3.28084);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[1]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 12);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[2]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 2.54);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
    }
    if (indexValue == 2) {
        if (value == pd[0]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 3.28084);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[1]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 12);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[2]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 2.54);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
    }
    if (indexValue == 3) {
        if (value == pd[0]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 3.28084);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[1]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 12);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[2]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 2.54);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
    }
    if (indexValue == 4) {
        if (value == pd[0]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 3.28084);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[1]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 12);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[2]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 2.54);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
    }
    if (indexValue == 5) {
        if (value == pd[0]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 3.28084);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[1]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 12);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
        if (value == pd[2]) {
            float inValue = [[field1 text] floatValue];
            float outValue = (inValue * 2.54);
            [field2 setText:[NSString stringWithFormat:@"%3.2f",outValue]];
        }
        
    }
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"didSelectRow: %li, inComponent: %li", (long)row, component);
    if (row == 0) {
        value = pd[row];
        self.label1.text = @"Meters";
        self.label2.text = @"Feet";
        [picker reloadAllComponents];
    }
    else if (row == 1) {
        value = pd[row];
        self.label1.text = @"Feet";
        self.label2.text = @"Inches";
        [picker reloadAllComponents];
    }
    else if (row == 2) {
        value = pd[row];
        self.label1.text = @"Inches";
        self.label2.text = @"Centimeters";
        [picker reloadAllComponents];
    }
}


#pragma mark Rotation

-(BOOL)shouldAutorotate {
    
    NSLog(@"Current Row Select Value %li", [picker selectedRowInComponent:0]);
    
    return YES;
}

@end
