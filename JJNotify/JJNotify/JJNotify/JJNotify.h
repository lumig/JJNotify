//
//  JJNotify.h
//  JJNotify
//
//  Created by luming on 2018/7/26.
//  Copyright © 2018年 luming. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^NotifyBlock)(__nullable id info);

@interface JJNotify : NSObject
//发送通知
+ (void)notify:(nonnull NSString *)eventName info:(nullable id)info;
//监听通知
+ (void)registerNotify:(nonnull NSString *)eventName instance:(nonnull id)instance block:(nullable NotifyBlock)block;
@end
