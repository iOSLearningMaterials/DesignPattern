//
//  AbstractMediator.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//

#import <Foundation/Foundation.h>
#import "AbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractMediator : NSObject <ColleagueDelegate> // 遵守协议是为了让子类去实现协议方法

- (void)colleagueEvent:(AbstractColleague *)event;

@end

NS_ASSUME_NONNULL_END
