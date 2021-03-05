//
//  Target_DesignPattern.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/5.
//

#import "Target_DesignPattern.h"

@implementation Target_DesignPattern

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    NSString *vcName = params[@"className"];
    Class class = NSClassFromString(vcName);
    id obj = [class new];
    if ([obj isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)obj;
    } else {
        return nil;
    }
}

@end
