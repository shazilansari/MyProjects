//
//  secondTabBarViewController.h
//  Shazil Final
//
//  Created by Shazil Ansari  on 12/10/18.
//  Copyright © 2018 student. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface secondTabBarViewController : UIViewController {
    IBOutlet UIImageView *image1;
    IBOutlet UIImageView *image2;


    
}
- (IBAction)btnPlay:(id)sender;

@property (nonatomic, retain) UIImageView *image1;
@property (nonatomic, retain) UIImageView *image2;



@end
