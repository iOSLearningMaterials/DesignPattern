//
//  Receiver.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Receiver : NSObject
/// 被服务对象 (视图变亮变暗)
@property (nonatomic, weak) UIView *colorView;

/// 被服务对象参数
/// 色调
@property (nonatomic, assign) CGFloat hue;
/// 饱和度
@property (nonatomic, assign) CGFloat saturation;
/// 亮度
@property (nonatomic, assign) CGFloat brightness;
/// 透明度
@property (nonatomic, assign) CGFloat alpha;


/// 视图变亮
- (void)makeViewLighter:(CGFloat)quantity;

/// 视图变暗
- (void)makeViewDarker:(CGFloat)quantity;

@end

NS_ASSUME_NONNULL_END
