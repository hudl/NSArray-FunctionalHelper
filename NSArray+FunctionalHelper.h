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
- (NSArray *)where:(BOOL (^)(id obj))textBlock;
- (void)each:(void (^)(id obj))block;
- (NSArray *)map:(id (^)(id obj))block;
- (NSArray *)select:(id (^)(id obj))block;
- (NSArray *)selectMany:(NSArray *(^)(id obj))block;
- (NSArray *)distinct;
- (NSDictionary *)toDictionary:(id (^)(id obj))block;
- (CGFloat)sum:(CGFloat (^)(id obj))block;
- (NSArray *)skip:(NSUInteger)count;
- (NSArray *)take:(NSUInteger)count;
- (NSArray *)reverse;
- (NSArray *)without:(id)object;
@end
