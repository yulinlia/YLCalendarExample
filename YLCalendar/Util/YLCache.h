//
//  YLCache.h
//  YLCalendar
//
//  Created by 梁煜麟 on 2/25/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YLCache : NSObject

+ (instancetype)cache;

+ (id)fetchObjectForKey:(id)key withCreator:(id(^)(void))block;

@end
