//
//  Signin_Page_ViewController.m
//  OLLO_App
//
//  Created by Bala Kumaran on 04/08/15.
//  Copyright (c) 2015 Bala Kumaran. All rights reserved.
//

#import "Signin_Page_ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <GoogleOpenSource/GoogleOpenSource.h>
#import "AfterLogin_ViewController.h"
#define IS_IPHONE           (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
static NSString * const kClientId = @"439265397071-vio9ubaav7ia4hr6nsjehl4df8p22mpc.apps.googleusercontent.com";

#define IS_IPHONE4 (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 480.0f)
@implementation Signin_Page_ViewController

@synthesize signInButton;
- (void)viewDidLoad {
    [super viewDidLoad];
    signOut_button_G.hidden = YES;
    //AfterLogin_ViewController  *infoController = [self.storyboard instantiateViewControllerWithIdentifier:@"get_Started_View"];
    //[self.navigationController pushViewController:infoController animated:YES];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    //Keyboard stuff
    _tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    _tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:_tapRecognizer];
    GPPSignIn *signIn = [GPPSignIn sharedInstance];
    signIn.shouldFetchGooglePlusUser = YES;
    signIn.shouldFetchGoogleUserEmail = YES;  // Uncomment to get the user's email
    //[self trySilentAuthentication];
    NSLog(@"Sign in Page Selected ");
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [FBLOGIN addSubview:loginButton];
    
    // Do any additional setup after loading the view, typically from a     
    // You previously set kClientId in the "Initialize the Google+ client" step
    signIn.clientID = kClientId;
    
    [GPPSignIn sharedInstance].actions = [NSArray arrayWithObjects:
                                          @"http://schemas.google.com/AddActivity",
                                          @"http://schemas.google.com/BuyActivity",
                                          @"http://schemas.google.com/CheckInActivity",
                                          @"http://schemas.google.com/CommentActivity",
                                          @"http://schemas.google.com/CreateActivity",
                                          @"http://schemas.google.com/ListenActivity",
                                          @"http://schemas.google.com/ReserveActivity",
                                          @"http://schemas.google.com/ReviewActivity",
                                          nil];
    
    // Uncomment one of these two statements for the scope you chose in the previous step
    signIn.scopes = @[ kGTLAuthScopePlusLogin ];  // "https://www.googleapis.com/auth/plus.login" scope
    //signIn.scopes = @[ @"profile" ];            // "profile" scope
    
    // Optional: declare signIn.actions, see "app activities"
    signIn.delegate = self;
    
    [gSingin addSubview:signInButton];
    [signIn trySilentAuthentication];
    //signOut_button_G.hidden = YES;
   

}
//G+ error
-(void)finishedWithAuth: (GTMOAuth2Authentication *)auth
error: (NSError *) error
{
    NSLog(@"Received error %@ and auth object %@",error, auth);
    if (error) {
        // Do some error handling here.
        signOut_button_G.hidden = YES;
        signin_image.hidden = NO;
    } else {
        signin_image.hidden = YES;
        signOut_button_G.hidden = NO;
        NSLog(@"%@ %@",[GPPSignIn sharedInstance].userEmail, [GPPSignIn sharedInstance].userID);
        [self refreshInterfaceBasedOnSignIn];
        
    }
}

-(void)refreshInterfaceBasedOnSignIn
{
    if ([[GPPSignIn sharedInstance] authentication]) {
        // The user is signed in.
        signInButton.hidden = YES;
        signin_image.hidden = YES;
        signOut_button_G.hidden = NO;
        // Perform other actions here, such as showing a sign-out button
    } else {
        signInButton.hidden = NO;
        signin_image.hidden = NO;
        signOut_button_G.hidden = YES;
        // Perform other actions here
    }
}

// Share Code
- (IBAction) didTapShare: (id)sender {
    id<GPPNativeShareBuilder> shareBuilder = [[GPPShare sharedInstance] nativeShareDialog];
    
    // This line will fill out the title, description, and thumbnail from
    // the URL that you are sharing and includes a link to that URL.
    [shareBuilder setURLToShare:[NSURL URLWithString:@"https://www.shinnxstudios.com"]];
    [shareBuilder setPrefillText:@"This is an awesome G+ Sample to share"];
    // [shareBuilder setTitle:@"Title" description:@"Descp" thumbnailURL:[NSURL URLWithString:@"https://www.fbo.com/imageurl"]];
    
    [shareBuilder open];
}
// For Signout USe this code
- (void)signOut {
    [[GPPSignIn sharedInstance] signOut];
    NSLog(@"SignOut successfully");
    signin_image.hidden = NO;
    signOut_button_G.hidden = YES;

}

// Disconnet User
- (void)disconnect {
    [[GPPSignIn sharedInstance] disconnect];
}

- (void)didDisconnectWithError:(NSError *)error {
    if (error) {
        NSLog(@"Received error %@", error);
    } else {
        // The user is signed out and disconnected.
        // Clean up user data as specified by the Google+ terms.
    }
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

- (IBAction)SignOut_Google:(id)sender {
    [self signOut];
}

- (IBAction)signin_button:(id)sender {
    
    if ([userNameFiled.text isEqual:@"NRIC76543"] && [passwordFiled.text isEqual:@"123456"])
    {
        AfterLogin_ViewController  *infoController = [self.storyboard instantiateViewControllerWithIdentifier:@"get_Started_View"];
        [self.navigationController pushViewController:infoController animated:YES];
          }
    else
    {
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"OLLA"message:@"Invalid User name or password " delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [myAlertView show];
    }
    
    
   }
-(void)viewWillAppear:(BOOL)animated{
    if (IS_IPHONE4)   //Check Whether is iPhone4s or not
    {
       // [ollo_img setFrame:CGRectMake(0, 0, 10, 10)]
        NSLog(@"Iphone 3.5 inch");
    }
   
}
- (void)handleSingleTap:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
}

@end
