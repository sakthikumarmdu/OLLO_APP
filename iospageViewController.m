//
//  iospageViewController.m
//  OLLO_App
//
//  Created by Bala Kumaran on 07/08/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import "iospageViewController.h"
//#import "pageViewController.h"
#import "PageItemController.h"

@interface iospageViewController ()
<UIPageViewControllerDataSource>

@property (nonatomic, strong) NSArray *contentImages;
@property (nonatomic, strong) UIPageViewController *pageViewController;
@end

@implementation iospageViewController
@synthesize pageViewController,signinAccountButton,locationButton,promotionButton,supportButton,webButton;
- (void) viewDidLoad
{
    buttonColor = accountButton.backgroundColor;
    buttonArray = [[NSArray alloc]initWithObjects:@"accountButton",@"DashboardButton",@"ordersButton",@"topupButton", nil];
    [super viewDidLoad];
    [self createPageViewController];
    [self setupPageControl];
}

- (void) createPageViewController
{
    _contentImages = @[@"user1.png",
                      @"dashboard1.png",
                      @"order1.png",
                      @"topup.png"];
    
    UIPageViewController *pageController = [self.storyboard instantiateViewControllerWithIdentifier: @"PageController"];
    pageController.dataSource = self;
    
    if([_contentImages count])
    {
        NSArray *startingViewControllers = @[[self itemControllerForIndex: 0]];
        [pageController setViewControllers: startingViewControllers
                                 direction: UIPageViewControllerNavigationDirectionForward
                                  animated: NO
                                completion: nil];
    }
    
    self.pageViewController = pageController;
   
    [self addChildViewController: self.pageViewController];
    [self.view addSubview: self.pageViewController.view];
    [self.pageViewController didMoveToParentViewController: self];
}

- (void) setupPageControl
{
    [[UIPageControl appearance] setPageIndicatorTintColor: [UIColor grayColor]];
    [[UIPageControl appearance] setCurrentPageIndicatorTintColor: [UIColor whiteColor]];
    [[UIPageControl appearance] setBackgroundColor: [UIColor darkGrayColor]];
    
}

#pragma mark -
#pragma mark UIPageViewControllerDataSource

- (UIViewController *) pageViewController: (UIPageViewController *) pageViewController viewControllerBeforeViewController:(UIViewController *) viewController
{
    PageItemController *itemController = (PageItemController *) viewController;
    
    if (itemController.itemIndex > 0)
    {
        
        return [self itemControllerForIndex: itemController.itemIndex-1];
    }
    
    return nil;
}

- (UIViewController *) pageViewController: (UIPageViewController *) pageViewController viewControllerAfterViewController:(UIViewController *) viewController
{
    PageItemController *itemController = (PageItemController *) viewController;
    
    if (itemController.itemIndex+1 < [_contentImages count])
    {
        
        return [self itemControllerForIndex: itemController.itemIndex+1];
    }
    
    return nil;
}

- (PageItemController *) itemControllerForIndex: (NSUInteger) itemIndex
{
    PageItemController *pageItemController = [self.storyboard instantiateViewControllerWithIdentifier: @"ItemController"];
    
    if (itemIndex < [_contentImages count])
    {
        
               pageItemController.itemIndex = itemIndex;
        pageItemController.imageName = _contentImages[itemIndex];
        if ([pageItemController.imageName isEqualToString:@"dashboard1.png"])
        {
            // ordersButton.backgroundColor = [UIColor orangeColor];
            accountButton.backgroundColor = buttonColor;
            topupButton.backgroundColor = buttonColor;
            ordersButton.backgroundColor = buttonColor;
            
        }
        if ([pageItemController.imageName isEqualToString:@"user1.png"])
        {
            NSLog(@"Account");
            //accountButton.backgroundColor = [UIColor orangeColor];
            topupButton.backgroundColor = buttonColor;
            DashboardButton.backgroundColor = buttonColor;
            ordersButton.backgroundColor = buttonColor;
            
        }
        if ([pageItemController.imageName isEqualToString:@"order1.png"])
        {
            NSLog(@"order");
            //DashboardButton.backgroundColor = [UIColor orangeColor];
            accountButton.backgroundColor = buttonColor;
            DashboardButton.backgroundColor = buttonColor;
            topupButton.backgroundColor = buttonColor;
        }
        if ([pageItemController.imageName isEqualToString:@"topup.png"])
        {
            //topupButton.backgroundColor = [UIColor orangeColor];
            accountButton.backgroundColor = buttonColor;
            DashboardButton.backgroundColor = buttonColor;
            ordersButton.backgroundColor = buttonColor;
        }
        
                return pageItemController;
        
      
    }
    
    return nil;
}

#pragma mark -
#pragma mark Page Indicator
/*
- (NSInteger) presentationCountForPageViewController: (UIPageViewController *) pageViewController
{
   
    return [_contentImages count];
}

- (NSInteger) presentationIndexForPageViewController: (UIPageViewController *) pageViewController
{
   
    return 0;
    
}*/


- (IBAction)topupButton:(id)sender {
    NSArray *startingViewControllers = @[[self itemControllerForIndex: 3]];
    [pageViewController setViewControllers: startingViewControllers
                             direction: UIPageViewControllerNavigationDirectionForward
                              animated: NO
                            completion: nil];
    topupButton.backgroundColor = [UIColor orangeColor];
    accountButton.backgroundColor = buttonColor;
    DashboardButton.backgroundColor = buttonColor;
    ordersButton.backgroundColor = buttonColor;
 
  
}
- (IBAction)ordersButton:(id)sender {
    NSArray *startingViewControllers = @[[self itemControllerForIndex: 2]];
    [pageViewController setViewControllers: startingViewControllers
                                 direction: UIPageViewControllerNavigationDirectionForward
                                  animated: NO
                                completion: nil];
    ordersButton.backgroundColor = [UIColor orangeColor];
    accountButton.backgroundColor = buttonColor;
    DashboardButton.backgroundColor = buttonColor;
    topupButton.backgroundColor = buttonColor;
    }

- (IBAction)dashButton:(id)sender {
    NSArray *startingViewControllers = @[[self itemControllerForIndex: 1]];
    [pageViewController setViewControllers: startingViewControllers
                                 direction: UIPageViewControllerNavigationDirectionForward
                                  animated: NO
                                completion: nil];
    DashboardButton.backgroundColor = [UIColor orangeColor];
    accountButton.backgroundColor = buttonColor;
    topupButton.backgroundColor = buttonColor;
    ordersButton.backgroundColor = buttonColor;
}
- (IBAction)accButton:(id)sender {
    NSArray *startingViewControllers = @[[self itemControllerForIndex: 0]];
    [pageViewController setViewControllers: startingViewControllers
                                 direction: UIPageViewControllerNavigationDirectionForward
                                  animated: NO
                                completion: nil];
    accountButton.backgroundColor = [UIColor orangeColor];
    topupButton.backgroundColor = buttonColor;
    DashboardButton.backgroundColor = buttonColor;
    ordersButton.backgroundColor = buttonColor;
}

- (IBAction)supportButtonAction:(id)sender {
}

- (IBAction)promotionButtonAction:(id)sender {
}

- (IBAction)signButtonAction:(id)sender {
}

- (IBAction)locationButtonAction:(id)sender {
}

- (IBAction)webButtonAction:(id)sender {
    NSString* launchUrl = @"http://zsolloapp.cloudapp.net/Default.aspx";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
    
}
@end
