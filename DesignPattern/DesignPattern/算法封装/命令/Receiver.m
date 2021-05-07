//
//  Receiver.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/30.
//

#import "Receiver.h"

@implementation Receiver

/// 获取被服务对象的参数
- (void)setColorView:(UIView *)colorView {
    _colorView = colorView;
    UIColor *color = colorView.backgroundColor;
    
    [color getHue:&_hue saturation:&_saturation brightness:&_brightness alpha:&_alpha];
}

- (void)makeViewLighter:(CGFloat)quantity {
    self.brightness +=  quantity;
    self.brightness = MIN(1, self.brightness);
    self.colorView.backgroundColor = [UIColor colorWithHue:self.hue saturation:self.saturation brightness:self.brightness alpha:self.alpha];
}

- (void)makeViewDarker:(CGFloat)quantity {
    self.brightness -= quantity;
    self.brightness  = MAX(0, self.brightness);
    
    self.colorView.backgroundColor = [UIColor colorWithHue:self.hue
                                                saturation:self.saturation
                                                brightness:self.brightness
                                                     alpha:self.alpha];
}

@end
