//
//  fourthTabBarViewController.h
//  Shazil Final
//
//  Created by Shazil Ansari  on 12/10/18.
//  Copyright © 2018 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fourthTabBarViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>{
    IBOutlet UIPickerView *picker;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label3;
    IBOutlet UILabel *label4;

    IBOutlet UITextField *field1;
    IBOutlet UITextField *field2;
    IBOutlet UIImageView *image1;
    IBOutlet UIImageView *Image2;
}

-(IBAction)convert:(id)sender;

@property (nonatomic, retain) UIPickerView *picker;
@property (nonatomic, retain) UILabel *label1;
@property (nonatomic, retain) UILabel *label2;
@property (nonatomic, retain) UILabel *label3;
@property (nonatomic, retain) UILabel *label4;


@property (nonatomic, retain) UITextField *field2;
@property (nonatomic, retain) UITextField *field1;
@property (nonatomic, retain) UIImageView *image1;
@property (nonatomic, retain) UIImageView *image2;

@end


