//
//  fifthTabBarViewController.m
//  Shazil Final
//
//  Created by Shazil Ansari  on 12/12/18.
//  Copyright © 2018 student. All rights reserved.
//

#import "fifthTabBarViewController.h"

@interface fifthTabBarViewController ()

@end

@implementation fifthTabBarViewController

@synthesize imageView;
@synthesize slider;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ballRadius = imageView.frame.size.width / 2;
    
    // need a starting point to animate could be any legit value
    delta = CGPointMake(4, 4);
    timer = [NSTimer scheduledTimerWithTimeInterval:slider.value
                                             target:self
                                           selector:@selector(onTimer:)
                                           userInfo:nil
                                            repeats:YES];
    translation = CGPointMake(0, 0);
    
}

-(void) onTimer:(id)sender {
    
    imageView.center = CGPointMake(imageView.center.x+delta.x,
                                   imageView.center.y+delta.y);
    
    
    // set animation parameters and commit
    [UIView beginAnimations:@"my-own" context:nil];
    [UIView setAnimationDuration:slider.value];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    imageView.transform = CGAffineTransformMakeTranslation(translation.x,
                                                           translation.y);
    
    [UIView commitAnimations];
    
    translation.x = translation.x + delta.x;
    translation.y = translation.y + delta.y;
    
    if ((imageView.center.x + translation.x > self.view.bounds.size.width -
         ballRadius) ||
        (imageView.center.x + translation.x < ballRadius)) {
        delta.x = -delta.x;
    }
    if ((imageView.center.y + translation.y > self.view.bounds.size.height -
         ballRadius) ||
        (imageView.center.y + translation.y < ballRadius)) {
        delta.y = -delta.y;
    }
}



- (IBAction)sliderMoved:(id)sender {
    
    [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:slider.value
                                             target:self
                                           selector:@selector(onTimer:)
                                           userInfo:nil
                                            repeats:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
