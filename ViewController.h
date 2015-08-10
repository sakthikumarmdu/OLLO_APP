//
//  ViewController.h
//  OLLO_App
//
//  Created by Bala Kumaran on 03/08/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Signin_Page_ViewController.h"

@interface ViewController : UIViewController
{
   
    IBOutlet UIButton *signIn_Button;
    IBOutlet UIButton *locations_Button;
    IBOutlet UIButton *promotions_Button;
    IBOutlet UIButton *topup_Button;
    IBOutlet UIButton *support_Button;
    IBOutlet UIButton *website_Button;
}
- (IBAction)signin_Button_Click:(id)sender;
- (IBAction)locations_Button_Click:(id)sender;
- (IBAction)promotions_Button_Click:(id)sender;
- (IBAction)topup_Button_Click:(id)sender;
- (IBAction)support_Button_Click:(id)sender;
- (IBAction)website_Button_Click:(id)sender;


@end

