//
//  ViewController.m
//  OLLO_App
//
//  Created by Bala Kumaran on 03/08/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Sign Button Action moving to sign in page
- (IBAction)signin_Button_Click:(id)sender
{
    NSLog(@"Button Clicked");
    //Signin_Page_ViewController *signinView = [[Signin_Page_ViewController alloc] init];
    
    // do any setup you need for myNewVC
    
    //[self presentViewController:signinView animated:YES completion:nil];
}

- (IBAction)locations_Button_Click:(id)sender {
}
- (IBAction)promotions_Button_Click:(id)sender {
}

- (IBAction)topup_Button_Click:(id)sender {
}
- (IBAction)support_Button_Click:(id)sender {
}

- (IBAction)website_Button_Click:(id)sender {
    NSString* launchUrl = @"http://zsolloapp.cloudapp.net/Default.aspx";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
}
@end
