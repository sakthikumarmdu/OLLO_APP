//
//  pageViewController.h
//  OLLO_App
//
//  Created by Bala Kumaran on 07/08/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pageViewController : UIViewController
@property (nonatomic) NSUInteger itemIndex; // ***
@property (nonatomic, strong) NSString *imageName; // ***
@property (nonatomic, weak) IBOutlet UIImageView *contentImageView;
@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;
@end
