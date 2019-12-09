//
//  tabBarViewController.m
//  Shazil Final
//
//  Created by Shazil Ansari on 11/29/18.
//  Copyright © 2018 student. All rights reserved.
//

#import "tabBarViewController.h"
#import "AppDelegate.h"

@implementation tabBarViewController


-(void)viewDidLoad {
    [super viewDidLoad];
    
    if (indexValue == 0){
        _imageView.image = [UIImage imageNamed:@"willis.jpg"];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"willis" ofType:@"txt"];
        _textView.text = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];    }
    else if (indexValue == 1){
        _imageView.image = [UIImage imageNamed:@"hancock.jpg"];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"hancock" ofType:@"txt"];
        _textView.text = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];    }
    else if (indexValue == 2){
        _imageView.image = [UIImage imageNamed:@"burj.jpg"];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"burj" ofType:@"txt"];
        _textView.text = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];    }
    else if (indexValue == 3){
        _imageView.image = [UIImage imageNamed:@"cayan.jpg"];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"cayan" ofType:@"txt"];
        _textView.text = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];    }
    else if (indexValue == 4){
        _imageView.image = [UIImage imageNamed:@"empire.jpg"];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"empire" ofType:@"txt"];
        _textView.text = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];    }
    else if (indexValue == 5){
        _imageView.image = [UIImage imageNamed:@"crysler.jpg"];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"crysler" ofType:@"txt"];
        _textView.text = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];    }
  
    // Do any additional setup after loading the view.
    
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

@end
