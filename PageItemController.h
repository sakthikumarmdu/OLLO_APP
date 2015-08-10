//
//  PageItemController.h
//  HandOff_ObjC
//
//  Created by Olga Dalton on 23/10/14.
//  Copyright (c) 2014 Olga Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageItemController : UIViewController
{
    
    IBOutlet UIView *imageViewMain;
   
}
@property (nonatomic) NSUInteger itemIndex;
@property (nonatomic, strong) NSString *imageName;


// IBOutlets
@property (nonatomic, weak) IBOutlet UIImageView *contentImageView;

@end
