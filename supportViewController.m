//
//  supportViewController.m
//  OLLO_App
//
//  Created by Asaraa on 8/8/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import "supportViewController.h"

@interface supportViewController ()

@end

@implementation supportViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
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

- (IBAction)webviewButton:(id)sender {
    NSString* launchUrl = @"http://zsolloapp.cloudapp.net/Default.aspx";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
}
@end
