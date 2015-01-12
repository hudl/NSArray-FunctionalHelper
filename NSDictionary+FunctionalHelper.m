//
//  NSDictionary+LinqAdditions.m
//  Hudl
//
//  Created by Erik Person on 11/18/11.
//  Copyright (c) 2011 Agile Sports Technologies, Inc. All rights reserved.
//

#import "NSDictionary+FunctionalHelper.h"

@implementation NSDictionary (LinqAdditions)

- (NSArray *)keys
{
    NSMutableArray *keys = [NSMutableArray arrayWithCapacity:self.count];
    for (id key in self)
    {
        [keys addObject:key];
    }
    return keys;
}

- (NSSet *)keySet
{
    NSMutableSet *keys = [NSMutableSet setWithCapacity:self.count];
    for (id key in self)
    {
        [keys addObject:key];
    }
    return keys;
}

- (BOOL)containsKey:(id)key
{
    return [[self keySet] containsObject:key];
}

- (NSArray *)values
{
    NSMutableArray *values = [NSMutableArray arrayWithCapacity:self.count];
    for (id key in self)
    {
        [values addObject:[self objectForKey:key]];
    }
    return values;
}

@end
