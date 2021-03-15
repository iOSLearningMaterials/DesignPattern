//
//  MementoDemoView.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/15.
//

#import "MementoDemoView.h"

@implementation MementoDemoView

- (id)currentObjState {
    return @{@"frame": NSStringFromCGRect(self.frame)};
}

- (void)recoverFromState:(id)state {
    if ([state isKindOfClass:[NSDictionary class]]) {
        NSDictionary *data = state;
        self.frame = CGRectFromString([data objectForKey:@"frame"]);
    }
}

@end
