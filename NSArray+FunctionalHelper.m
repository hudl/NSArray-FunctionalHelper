//
//  NSArray+FunctionHelper.m
//  Hudl
//
//  Created by Erik Person on 3/24/11.
//  Copyright 2011 Agile Sports Technologies, Inc. All rights reserved.
//

#import "NSArray+FunctionalHelper.h"


@implementation NSArray (FunctionalHelper)

- (id)first
{
    if ([self count] == 0)
    {
        return nil;
    }
    return [self objectAtIndex:0];
}

- (id)find:(BOOL (^)(id obj))testBlock
{
    for (id next in self)
    {
        if (testBlock(next)) {
            return next;
        }
    }
    return nil;
}

- (NSArray *)where:(BOOL (^)(id obj))testBlock
{
    NSMutableArray *new = [NSMutableArray array];
    
    for (id next in self)
    {
        if (testBlock(next))
        {
            [new addObject:next];
        }
    }
    
    return new;
}

- (void)each:(void (^)(id obj))block
{
    for (id next in self)
    {
        block(next);
    }
}

- (NSArray *)map:(id (^)(id obj))block
{
    NSMutableArray *result = [NSMutableArray array];
    for (id next in self)
    {
        [result addObject:block(next)];
    }
    return result;
}

- (NSArray *)select:(id (^)(id obj))block
{
    return [self map:block];
}

- (NSArray *)selectMany:(NSArray *(^)(id obj))block
{
    NSMutableArray *result = [NSMutableArray array];
    for (id next in self)
    {
        [result addObjectsFromArray:block(next)];
    }
    return result;
}

- (NSArray *)distinct
{
    NSMutableSet *set = [NSMutableSet set];
    for (id next in self)
    {
        [set addObject:next];
    }
    return [set allObjects];
}

- (NSDictionary *)toDictionary:(id (^)(id obj))block
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:self.count];
    for (id next in self)
    {
        [dict setObject:next forKey:block(next)];
    }
    return dict;
}

- (CGFloat)sum:(CGFloat (^)(id obj))block
{
    CGFloat total = 0;
    for (id next in self)
    {
        total += block(next);
    }
    return total;
}

- (NSArray *)skip:(NSUInteger)count
{
    NSMutableArray *result = [NSMutableArray array];
    for (NSUInteger index = count; index < self.count; index++)
    {
        [result addObject:[self objectAtIndex:index]];
    }
    return result;
}

- (NSArray *)take:(NSUInteger)count
{
    if (count > self.count)
    {
        count = self.count;
    }
    
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:count];
    for (NSUInteger index = 0; index < count; index++)
    {
        [result addObject:[self objectAtIndex:index]];
    }
    return result;
}

- (NSArray *)reverse
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    for (id element in enumerator)
    {
        [array addObject:element];
    }
    return array;
}

- (NSArray *)without:(id)object
{
    NSMutableArray *result = [[self mutableCopy] autorelease];
    [result removeObject:object];
    return result;
}

@end
