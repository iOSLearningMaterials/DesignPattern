//
//  AbstractColleague.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//

#import <Foundation/Foundation.h>

@class AbstractColleague;

NS_ASSUME_NONNULL_BEGIN

@protocol ColleagueDelegate <NSObject>

@optional

/// colleague对象的交互
/// @param event colleague对象
- (void)colleagueEvent:(AbstractColleague *)event;

@end

@interface AbstractColleague : NSObject

@property (nonatomic, weak) id<ColleagueDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
