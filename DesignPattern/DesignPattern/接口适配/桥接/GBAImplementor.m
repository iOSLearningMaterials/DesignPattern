//
//  GBAImplementor.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/4.
//

#import "GBAImplementor.h"

@implementation GBAImplementor

- (void)implementCommand:(CommandType)command {
    switch (command) {
        case kCommandUp:
            NSLog(@"kCommandUp");
            break;
        case kCommandDown:
            NSLog(@"kCommandDown");
            break;
        case kCommandLeft:
            NSLog(@"kCommandLeft");
            break;
        case kCommandRight:
            NSLog(@"kCommandRight");
            break;
        case kCommandSelect:
            NSLog(@"kCommandSelect");
            break;
        case kCommandStart:
            NSLog(@"kCommandStart");
            break;
        case kCommandA:
            NSLog(@"kCommandA");
            break;
        case kCommandB:
            NSLog(@"kCommandB");
            break;
    }
}

@end
