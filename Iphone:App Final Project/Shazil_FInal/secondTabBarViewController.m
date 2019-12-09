//
//  secondTabBarViewController.m
//  Shazil Final
//
//  Created by Shazil Ansari  on 12/10/18.
//  Copyright © 2018 student. All rights reserved.
//

#import "secondTabBarViewController.h"
#import "AppDelegate.h"

@interface secondTabBarViewController ()

@end

@implementation secondTabBarViewController
@synthesize image1, image2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (indexValue == 0){
        image1.image = [UIImage imageNamed:@"willis1.jpg"];
        image2.image = [UIImage imageNamed:@"willis2.jpg"];
    }
    if (indexValue == 1) {
        image1.image = [UIImage imageNamed:@"hancock1.jpg"];
        image2.image = [UIImage imageNamed:@"hancock2.jpg"];
    }
    if (indexValue == 2) {
        image1.image = [UIImage imageNamed:@"burj1.jpg"];
        image2.image = [UIImage imageNamed:@"burj2.jpg"];
    }
    if (indexValue == 3) {
        image1.image = [UIImage imageNamed:@"cayan1.jpg"];
        image2.image = [UIImage imageNamed:@"cayan2.jpg"];
    }
    if (indexValue == 4) {
        image1.image = [UIImage imageNamed:@"empire1.jpg"];
        image2.image = [UIImage imageNamed:@"empire2.jpg"];
        
    }
    if (indexValue == 5) {
        image1.image = [UIImage imageNamed:@"crysler1.jpg"];
        image2.image = [UIImage imageNamed:@"crysler2.gif"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnPlay:(id)sender {
    if (indexValue == 0) {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Willis" ofType:@"mp4"];
    
    NSURL *url = [NSURL fileURLWithPath:path];
    
    AVPlayer *player = [AVPlayer playerWithURL:url];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    
    controller.player = player;
    
    // showing video on full screen
    controller.view.frame = self.view.bounds;
    [[self view] addSubview:controller.view];
    
    [player play];
}
    if(indexValue == 1){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Hancock" ofType:@"mp4"];
        
        NSURL *url = [NSURL fileURLWithPath:path];
        
        AVPlayer *player = [AVPlayer playerWithURL:url];
        
        AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
        
        controller.player = player;
        
        // showing video on full screen
        controller.view.frame = self.view.bounds;
        [[self view] addSubview:controller.view];
        
        [player play];

    }
    if (indexValue == 2){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Burj" ofType:@"mp4"];

        NSURL *url = [NSURL fileURLWithPath:path];

        AVPlayer *player = [AVPlayer playerWithURL:url];

        AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];

        controller.player = player;

        // showing video on full screen
        controller.view.frame = self.view.bounds;
        [[self view] addSubview:controller.view];

        [player play];

    }
    if (indexValue == 3){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Cayan" ofType:@"mp4"];
        
        NSURL *url = [NSURL fileURLWithPath:path];
    
        AVPlayer *player = [AVPlayer playerWithURL:url];
    
        AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    
        controller.player = player;
    
        // showing video on full screen
        controller.view.frame = self.view.bounds;
        [[self view] addSubview:controller.view];
    
        [player play];
    }
    
    if (indexValue == 4){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Empire" ofType:@"mp4"];
        
        NSURL *url = [NSURL fileURLWithPath:path];
        
        AVPlayer *player = [AVPlayer playerWithURL:url];
        
        AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
        
        controller.player = player;
        
        // showing video on full screen
        controller.view.frame = self.view.bounds;
        [[self view] addSubview:controller.view];
        
        [player play];
    }
    
    if (indexValue == 5){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Crysler" ofType:@"mp4"];
        
        NSURL *url = [NSURL fileURLWithPath:path];
        
        AVPlayer *player = [AVPlayer playerWithURL:url];
        
        AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
        
        controller.player = player;
        
        // showing video on full screen
        controller.view.frame = self.view.bounds;
        [[self view] addSubview:controller.view];
        
        [player play];
    }
    
    
    
}
@end
