//
//  NSArray+FunctionalHelper.h
//  Hudl
//
//  Created by Erik Person on 3/24/11.
//  Copyright 2011 Agile Sports Technologies, Inc. All rights reserved.
//

@interface NSArray (FunctionalHelper)
- (id)first;
- (id)find:(BOOL (^)(id obj))testBlock;
- (instancetype)where:(BOOL (^)(id obj))textBlock;
- (void)each:(void (^)(id obj))block;
- (instancetype)map:(id (^)(id obj))block;
- (instancetype)select:(id (^)(id obj))block;
- (instancetype)selectMany:(NSArray *(^)(id obj))block;
- (instancetype)distinct;
- (NSDictionary *)toDictionary:(id (^)(id obj))block;
- (CGFloat)sum:(CGFloat (^)(id obj))block;
- (instancetype)skip:(NSUInteger)count;
- (instancetype)take:(NSUInteger)count;
- (instancetype)reverse;
- (instancetype)without:(id)object;
@end

@interface NSSet (FunctionalHelper)
- (id)find:(BOOL (^)(id obj))testBlock;
- (instancetype)where:(BOOL (^)(id obj))textBlock;
- (void)each:(void (^)(id obj))block;
- (instancetype)map:(id (^)(id obj))block;
- (instancetype)select:(id (^)(id obj))block;
- (instancetype)selectMany:(NSArray *(^)(id obj))block;
- (NSDictionary *)toDictionary:(id (^)(id obj))block;
- (CGFloat)sum:(CGFloat (^)(id obj))block;
- (instancetype)without:(id)object;
@end
