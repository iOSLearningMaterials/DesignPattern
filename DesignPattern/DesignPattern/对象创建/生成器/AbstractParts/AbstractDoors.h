//
//  AbstractDoors.h
//  LoginOC
//
//  Created by 于鸿鹏 on 2021/2/4.
//  Copyright © 2021 于鸿鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractDoors <NSObject>

@required

- (void)doorColor:(UIColor *)color;

- (NSString *)doorInfo;

@end

NS_ASSUME_NONNULL_END
