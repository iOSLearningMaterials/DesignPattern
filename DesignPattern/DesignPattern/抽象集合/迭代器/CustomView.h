//
//  CustomView.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import <UIKit/UIKit.h>
#import "IteratorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomView : UIView <IteratorProtocol>

@end

NS_ASSUME_NONNULL_END
