//
//  NeBlockAlertView.h
//  BlockAlertView
//
//  Created by neolix on 14-7-29.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NeBlockAlertView : UIAlertView
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle cancelBlock:(void(^)())cancelBlock configButtonTitle:(NSString *)configTitle configBlock:(void (^)())configBlock;

@end
