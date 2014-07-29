//
//  NeBlockAlertView.m
//  BlockAlertView
//
//  Created by neolix on 14-7-29.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//

#import "NeBlockAlertView.h"

@interface NeBlockAlertView ()<UIAlertViewDelegate>

@property (nonatomic, copy)void (^cancelClicked)();
@property (nonatomic, copy)void (^configClicked)();

@end

@implementation NeBlockAlertView

- (id)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle cancelBlock:(void (^)())cancelBlock configButtonTitle:(NSString *)configTitle configBlock:(void (^)())configBlock{
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelTitle otherButtonTitles:configTitle, nil];
    if (self) {
        self.cancelClicked = cancelBlock;
        self.configClicked = configBlock;
    }
    return self;
}


+ (void)alertWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle cancelBlock:(void (^)())cancelBlock configButtonTitle:(NSString *)configTitle configBlock:(void (^)())configBlock{
    NeBlockAlertView * alertView = [[NeBlockAlertView alloc] initWithTitle:title message:message cancelButtonTitle:cancelTitle cancelBlock:cancelBlock configButtonTitle:configTitle configBlock:configBlock];
    [alertView show];
}


#pragma mark -UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            if (self.cancelClicked) {
                self.cancelClicked();
            }
            break;
        case 1:
            if (self.configClicked) {
                self.configClicked();
            }
            break;
        default:
            break;
    }
}


@end
