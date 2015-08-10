//
//  PageItemController.m
//  HandOff_ObjC
//
//  Created by Olga Dalton on 23/10/14.
//  Copyright (c) 2014 Olga Dalton. All rights reserved.
//

#import "PageItemController.h"
#import "iospageViewController.h"
@interface PageItemController ()

@end

@implementation PageItemController
@synthesize itemIndex;
@synthesize imageName;
@synthesize contentImageView;
iospageViewController *iospageview;
#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    contentImageView.image = [UIImage imageNamed: imageName];
    iospageview = [[iospageViewController alloc]init];
    
}

#pragma mark -
#pragma mark Content

- (void) setImageName: (NSString *) name
{
    
    imageName = name;
    
    contentImageView.image = [UIImage imageNamed: imageName];
    if ([imageName isEqualToString:@"dashboard1.png"])
    {
        NSLog(@"Dash");
        UILabel *headingLabel = [[UILabel alloc] initWithFrame:CGRectMake(115, 115, 300, 300)];
        
        [self.view addSubview:headingLabel];
        
        
        
        headingLabel.text = @"OVERVIEW";
        headingLabel.textColor = [UIColor orangeColor];
        
        
        headingLabel.tag = 10;
        headingLabel.backgroundColor = [UIColor clearColor];
        headingLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:22.0];
        headingLabel.hidden = NO;
        headingLabel.highlighted = YES;
        headingLabel.highlightedTextColor = [UIColor blueColor];
        headingLabel.lineBreakMode = YES;
        headingLabel.numberOfLines = 0;
        UILabel *headingLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(95, 145, 300, 300)];
        
        [self.view addSubview:headingLabel1];
        
        
        
        headingLabel1.text = @"My Custom Dashboard";
        headingLabel1.textColor = [UIColor orangeColor];
        
        
        headingLabel1.tag = 10;
        headingLabel1.backgroundColor = [UIColor clearColor];
        headingLabel1.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:17.0];
        headingLabel1.hidden = NO;
        headingLabel1.highlighted = YES;
        headingLabel1.highlightedTextColor = [UIColor blueColor];
        headingLabel1.lineBreakMode = YES;
        headingLabel1.numberOfLines = 0;
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button addTarget:self
                   action:@selector(aMethod:)
         forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"EXPLORE MORE" forState:UIControlStateNormal];
        button.frame = CGRectMake(60.0, 250, 200, 200);
        [button setTitleColor:[UIColor orangeColor] forState:UIButtonTypeCustom];
        [self.view addSubview:button];
        
    }
    if ([imageName isEqualToString:@"user1.png"])
    {
        NSLog(@"Account");
        UILabel *headingLabel = [[UILabel alloc] initWithFrame:CGRectMake(135, 115, 300, 300)];
        
        [self.view addSubview:headingLabel];
        
        
        
        headingLabel.text = @"Hello";
        headingLabel.textColor = [UIColor orangeColor];
        
        
        headingLabel.tag = 10;
        headingLabel.backgroundColor = [UIColor clearColor];
        headingLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:22.0];
        headingLabel.hidden = NO;
        headingLabel.highlighted = YES;
        headingLabel.highlightedTextColor = [UIColor blueColor];
        headingLabel.lineBreakMode = YES;
        headingLabel.numberOfLines = 0;
        UILabel *headingLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(128, 145, 300, 300)];
        
        [self.view addSubview:headingLabel1];
        
        
        
        headingLabel1.text = @"Jaydeep";
        headingLabel1.textColor = [UIColor orangeColor];
        
        
        headingLabel1.tag = 10;
        headingLabel1.backgroundColor = [UIColor clearColor];
        headingLabel1.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:17.0];
        headingLabel1.hidden = NO;
        headingLabel1.highlighted = YES;
        headingLabel1.highlightedTextColor = [UIColor blueColor];
        headingLabel1.lineBreakMode = YES;
        headingLabel1.numberOfLines = 0;
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button addTarget:self
                   action:@selector(aMethod1:)
         forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"MY ACCOUNT" forState:UIControlStateNormal];
        button.frame = CGRectMake(60.0, 250, 200, 200);
        [button setTitleColor:[UIColor orangeColor] forState:UIButtonTypeCustom];
        [self.view addSubview:button];
       
    }
    if ([imageName isEqualToString:@"order1.png"])
    {
        NSLog(@"order");
        UILabel *headingLabel = [[UILabel alloc] initWithFrame:CGRectMake(105, 115, 300, 300)];
        
        [self.view addSubview:headingLabel];
        
        
        
        headingLabel.text = @"ORDER HISTORY";
        headingLabel.textColor = [UIColor orangeColor];
        
        
        headingLabel.tag = 10;
        headingLabel.backgroundColor = [UIColor clearColor];
        headingLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:22.0];
        headingLabel.hidden = NO;
        headingLabel.highlighted = YES;
        headingLabel.highlightedTextColor = [UIColor blueColor];
        headingLabel.lineBreakMode = YES;
        headingLabel.numberOfLines = 0;
        UILabel *headingLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 145, 300, 300)];
        
        [self.view addSubview:headingLabel1];
        
        
        
        headingLabel1.text = @"Past & Current Orders";
        headingLabel1.textColor = [UIColor orangeColor];
        
        
        headingLabel1.tag = 10;
        headingLabel1.backgroundColor = [UIColor clearColor];
        headingLabel1.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:17.0];
        headingLabel1.hidden = NO;
        headingLabel1.highlighted = YES;
        headingLabel1.highlightedTextColor = [UIColor blueColor];
        headingLabel1.lineBreakMode = YES;
        headingLabel1.numberOfLines = 0;
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button addTarget:self
                   action:@selector(aMethod2:)
         forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"MANAGE ORDERS" forState:UIControlStateNormal];
        button.frame = CGRectMake(60.0, 250, 200, 200);
        [button setTitleColor:[UIColor orangeColor] forState:UIButtonTypeCustom];
        [self.view addSubview:button];
        
    }
    if ([imageName isEqualToString:@"topup.png"])
    {
        NSLog(@"topup");
        UILabel *headingLabel = [[UILabel alloc] initWithFrame:CGRectMake(125, 115, 300, 300)];
        
        [self.view addSubview:headingLabel];
        
        
        
        headingLabel.text = @"TOP-UP";
        headingLabel.textColor = [UIColor orangeColor];
        
        
        headingLabel.tag = 10;
        headingLabel.backgroundColor = [UIColor clearColor];
        headingLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:22.0];
        headingLabel.hidden = NO;
        headingLabel.highlighted = YES;
        headingLabel.highlightedTextColor = [UIColor blueColor];
        headingLabel.lineBreakMode = YES;
        headingLabel.numberOfLines = 0;
        UILabel *headingLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(90, 145, 300, 300)];
        
        [self.view addSubview:headingLabel1];
        
        
        
        headingLabel1.text = @"Quick & Secure Payment";
        headingLabel1.textColor = [UIColor orangeColor];
        
        
        headingLabel1.tag = 10;
        headingLabel1.backgroundColor = [UIColor clearColor];
        headingLabel1.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:17.0];
        headingLabel1.hidden = NO;
        headingLabel1.highlighted = YES;
        headingLabel1.highlightedTextColor = [UIColor blueColor];
        headingLabel1.lineBreakMode = YES;
        headingLabel1.numberOfLines = 0;
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button addTarget:self
                   action:@selector(aMethod3:)
         forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"CREDIT ACCOUNT" forState:UIControlStateNormal];
        button.frame = CGRectMake(60.0, 250, 200, 200);
        [button setTitleColor:[UIColor orangeColor] forState:UIButtonTypeCustom];
        [self.view addSubview:button];
    }

    
}

-(void) aMethod:(id)sender
{
    
}
-(void) aMethod1:(id)sender
{
    
}
-(void) aMethod2:(id)sender
{
    
}
-(void) aMethod3:(id)sender
{
    
}
@end
