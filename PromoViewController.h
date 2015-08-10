//
//  PromoViewController.h
//  OLLO_App
//
//  Created by Asaraa on 8/8/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PromoViewController : UIViewController
{
    IBOutlet UIView *sidebarView;
}
@property (strong, nonatomic) IBOutlet UIButton *MENUBUTTON;
@property (strong, nonatomic) IBOutlet UIView *PROMOVIEW;
- (IBAction)Notifications:(id)sender;
- (IBAction)terms:(id)sender;
- (IBAction)card_relace:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *copyroght;
- (IBAction)copyright:(id)sender;
- (IBAction)menuButAct:(id)sender;
@property (nonatomic) UITapGestureRecognizer *tapRecognizer;@end
