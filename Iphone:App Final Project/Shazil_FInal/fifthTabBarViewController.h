//
//  fifthTabBarViewController.h
//  Shazil Final
//
//  Created by Shazil Ansari  on 12/12/18.
//  Copyright © 2018 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fifthTabBarViewController : UIViewController {
    
    IBOutlet UIImageView *imageView;
    IBOutlet UISlider *slider;
    
    CGPoint delta;
    NSTimer *timer;
    float ballRadius;
    // for affine transform
    CGPoint translation;
    
}
@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) UISlider *slider;
-(IBAction) sliderMoved:(id) sender;

@end
