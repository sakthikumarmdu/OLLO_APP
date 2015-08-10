//
//  locationViewController.m
//  OLLO_App
//
//  Created by Asaraa on 8/8/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import "locationViewController.h"

@interface locationViewController ()

@end

@implementation locationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    _tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    _tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:_tapRecognizer];
    sidebarView.hidden= YES;
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

- (IBAction)MenuButtonAction:(id)sender {
    sidebarView.hidden = NO;
}

- (IBAction)termsofUse:(id)sender {
    
}

- (IBAction)ollo2015:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"OLLO "
                                                    message:@"COPY RIGHT BY OLLO 2015 "
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (IBAction)cardReplacementButton:(id)sender {
}

- (IBAction)notifictionButton:(id)sender {
}
- (IBAction)webButton:(id)sender {
    NSString* launchUrl = @"http://zsolloapp.cloudapp.net/Default.aspx";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
}

- (IBAction)searchButtonAction:(id)sender {
}
- (void)handleSingleTap:(UITapGestureRecognizer *) sender
{
    sidebarView.hidden  = YES;
}
@end
