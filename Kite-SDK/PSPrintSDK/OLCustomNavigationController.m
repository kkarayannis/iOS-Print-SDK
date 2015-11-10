//
//  OLCustomNavigationController.m
//  KitePrintSDK
//
//  Created by Konstadinos Karayannis on 3/20/15.
//  Copyright (c) 2015 Deon Botha. All rights reserved.
//

#import "OLCustomNavigationController.h"

@implementation OLCustomNavigationController

- (BOOL)shouldAutorotate {
    UIViewController *vc;
    if (self.presentedViewController) vc = self.presentedViewController;
    else vc = [self topViewController];
    if (![vc isKindOfClass:[UIAlertController class]]){
        return [vc shouldAutorotate];
    }
    else{
        return NO;
    }
    
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    UIViewController *vc;
    if (self.presentedViewController && ![self.presentedViewController isKindOfClass:[UIAlertController class]]) vc = self.presentedViewController;
    else vc = [self topViewController];
    if (![vc isKindOfClass:[UIAlertController class]]){
        return [vc supportedInterfaceOrientations];
    }
    else{
        return UIInterfaceOrientationMaskPortrait;
    }
}

@end
