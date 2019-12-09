//
//  thirdTabBarViewController.m
//  Shazil Final
//
//  Created by Shazil Ansari  on 12/10/18.
//  Copyright © 2018 student. All rights reserved.
//

#import "thirdTabBarViewController.h"
#import "AppDelegate.h"

@interface thirdTabBarViewController ()

@end

@implementation thirdTabBarViewController
@synthesize picker, label1, label2, label3;
@synthesize image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12,
image13, image14, image15, image16, image17, image18;

static NSString *pd[3] = {@"Daytime",@"Nighttime",@"Interior"};


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [image1 setImage:[UIImage imageNamed:@"willis.jpg"]];
    [image2 setImage:[UIImage imageNamed:@"willisN.jpg"]];
    [image3 setImage:[UIImage imageNamed:@"willisI.jpg"]];
    
    [image4 setImage:[UIImage imageNamed:@"hancock.jpg"]];
    [image5 setImage:[UIImage imageNamed:@"hancockN.jpg"]];
    [image6 setImage:[UIImage imageNamed:@"hancockI.jpg"]];
    
    [image7 setImage:[UIImage imageNamed:@"burj.jpg"]];
    [image8 setImage:[UIImage imageNamed:@"burjN.jpg"]];
    [image9 setImage:[UIImage imageNamed:@"burjI.jpg"]];
    
    [image10 setImage:[UIImage imageNamed:@"cayan.jpg"]];
    [image11 setImage:[UIImage imageNamed:@"cayanN.jpg"]];
    [image12 setImage:[UIImage imageNamed:@"cayanI.jpg"]];
    
    [image13 setImage:[UIImage imageNamed:@"empire.jpg"]];
    [image14 setImage:[UIImage imageNamed:@"empireN.jpg"]];
    [image15 setImage:[UIImage imageNamed:@"empireI.jpg"]];
    
    [image16 setImage:[UIImage imageNamed:@"crysler.jpg"]];
    [image17 setImage:[UIImage imageNamed:@"cryslerN.jpg"]];
    [image18 setImage:[UIImage imageNamed:@"cryslerI.jpg"]];


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

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"didSelectRow: %li, inComponent: %li", (long)row, component);
    if (indexValue == 0){
    if (row == 0) {
        self.label1.text = @"View during the day!";
        [image1 setHidden:NO];
        [image2 setHidden:YES];
        [image3 setHidden:YES];
        [image4 setHidden:YES];
        [image5 setHidden:YES];
        [image6 setHidden:YES];
        [image7 setHidden:YES];
        [image8 setHidden:YES];
        [image9 setHidden:YES];
        [image10 setHidden:YES];
        [image11 setHidden:YES];
        [image12 setHidden:YES];
        [image13 setHidden:YES];
        [image14 setHidden:YES];
        [image15 setHidden:YES];
        [image16 setHidden:YES];
        [image17 setHidden:YES];
        [image18 setHidden:YES];
        [picker reloadAllComponents];
    }
    else if (row == 1) {
        self.label1.text = @"View at Night!";
        [image1 setHidden:YES];
        [image2 setHidden:NO];
        [image3 setHidden:YES];
        [image4 setHidden:YES];
        [image5 setHidden:YES];
        [image6 setHidden:YES];
        [image7 setHidden:YES];
        [image8 setHidden:YES];
        [image9 setHidden:YES];
        [image10 setHidden:YES];
        [image11 setHidden:YES];
        [image12 setHidden:YES];
        [image13 setHidden:YES];
        [image14 setHidden:YES];
        [image15 setHidden:YES];
        [image16 setHidden:YES];
        [image17 setHidden:YES];
        [image18 setHidden:YES];
        [picker reloadAllComponents];
    }
    else if (row == 2) {
        self.label1.text = @"View of Inside!";
        [image1 setHidden:YES];
        [image2 setHidden:YES];
        [image3 setHidden:NO];
        [image4 setHidden:YES];
        [image5 setHidden:YES];
        [image6 setHidden:YES];
        [image7 setHidden:YES];
        [image8 setHidden:YES];
        [image9 setHidden:YES];
        [image10 setHidden:YES];
        [image11 setHidden:YES];
        [image12 setHidden:YES];
        [image13 setHidden:YES];
        [image14 setHidden:YES];
        [image15 setHidden:YES];
        [image16 setHidden:YES];
        [image17 setHidden:YES];
        [image18 setHidden:YES];
        [picker reloadAllComponents];
    }
    }
    else if (indexValue == 1){
        if (row == 0) {
            self.label1.text = @"View during the day!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:NO];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 1) {
            self.label1.text = @"View at Night!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:NO];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 2) {
            self.label1.text = @"View of Inside!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:NO];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        
    }
    else if (indexValue == 2){
        if (row == 0) {
            self.label1.text = @"View during the day!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:NO];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 1) {
            self.label1.text = @"View at Night!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:NO];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 2) {
            self.label1.text = @"View of Inside!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:NO];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        
    }
    else if (indexValue == 3){
        if (row == 0) {
            self.label1.text = @"View during the day!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:NO];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 1) {
            self.label1.text = @"View at Night!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:NO];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 2) {
            self.label1.text = @"View of Inside!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:NO];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        
    }
    else if (indexValue == 4){
        if (row == 0) {
            self.label1.text = @"View during the day!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:NO];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 1) {
            self.label1.text = @"View at Night!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:NO];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 2) {
            self.label1.text = @"View of Inside!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:NO];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        
    }
    else if (indexValue == 5){
        if (row == 0) {
            self.label1.text = @"View during the day!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:NO];
            [image17 setHidden:YES];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 1) {
            self.label1.text = @"View at Night!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:NO];
            [image18 setHidden:YES];
            [picker reloadAllComponents];
        }
        else if (row == 2) {
            self.label1.text = @"View of Inside!";
            [image1 setHidden:YES];
            [image2 setHidden:YES];
            [image3 setHidden:YES];
            [image4 setHidden:YES];
            [image5 setHidden:YES];
            [image6 setHidden:YES];
            [image7 setHidden:YES];
            [image8 setHidden:YES];
            [image9 setHidden:YES];
            [image10 setHidden:YES];
            [image11 setHidden:YES];
            [image12 setHidden:YES];
            [image13 setHidden:YES];
            [image14 setHidden:YES];
            [image15 setHidden:YES];
            [image16 setHidden:YES];
            [image17 setHidden:YES];
            [image18 setHidden:NO];
            [picker reloadAllComponents];
        }
        
    }
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
