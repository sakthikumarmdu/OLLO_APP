//
//  iospageViewController.h
//  OLLO_App
//
//  Created by Bala Kumaran on 07/08/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iospageViewController : UIViewController
{
    IBOutlet UIButton *topupButton;
    IBOutlet UIButton *ordersButton;
    IBOutlet UIButton *DashboardButton;
    IBOutlet UIButton *accountButton;
    UIColor* buttonColor;
    UIColor* buttonColor1;
    UIColor* buttonColor2;
    UIColor* buttonColor3;
    NSArray *buttonArray;
}
- (IBAction)supportButtonAction:(id)sender;
- (IBAction)promotionButtonAction:(id)sender;
- (IBAction)signButtonAction:(id)sender;


- (IBAction)locationButtonAction:(id)sender;

- (IBAction)webButtonAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *webButton;
@property (strong, nonatomic) IBOutlet UIButton *supportButton;
@property (strong, nonatomic) IBOutlet UIButton *promotionButton;
@property (strong, nonatomic) IBOutlet UIButton *locationButton;
@property (strong, nonatomic) IBOutlet UIButton *signinAccountButton;
@end
