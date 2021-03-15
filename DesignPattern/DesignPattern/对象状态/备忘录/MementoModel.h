//
//  MementoModel.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/15.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"


NS_ASSUME_NONNULL_BEGIN

@interface MementoModel : NSObject <MementoCenterProtocol> // 遵守协议是为了要存储此对象

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *age;

@end

NS_ASSUME_NONNULL_END
 
