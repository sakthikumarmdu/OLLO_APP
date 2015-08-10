//
//  pageViewController.m
//  OLLO_App
//
//  Created by Bala Kumaran on 07/08/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import "pageViewController.h"

@interface pageViewController ()

@end

@implementation pageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   _contentImageView.image = [UIImage imageNamed: _imageName];
    // Do any additional setup after loading the view.
}
- (void) setImageName: (NSString *) name
{
    _imageName = name;
    _contentImageView.image = [UIImage imageNamed: _imageName];
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
