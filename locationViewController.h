//
//  locationViewController.h
//  OLLO_App
//
//  Created by Asaraa on 8/8/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface locationViewController : UIViewController
{

    IBOutlet UIButton *ollo_2015;
    IBOutlet UIButton *termsofuse;
    IBOutlet UIButton *notifiation;
    IBOutlet UIButton *cardReplacement;
    IBOutlet UIView *sidebarView;
    IBOutlet UIButton *searchButtonOutlet;
    IBOutlet UIButton *menuButton;
}
- (IBAction)MenuButtonAction:(id)sender;
- (IBAction)termsofUse:(id)sender;
- (IBAction)ollo2015:(id)sender;
@property (nonatomic) UITapGestureRecognizer *tapRecognizer;
- (IBAction)cardReplacementButton:(id)sender;
- (IBAction)notifictionButton:(id)sender;
- (IBAction)searchButtonAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *streetField;
@property (weak, nonatomic) IBOutlet UITextField *zipcodeField;
@end
