//
//  NSDictionary+FunctionalHelper.h
//  Hudl
//
//  Created by Erik Person on 11/18/11.
//  Copyright (c) 2011 Agile Sports Technologies, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (FunctionalHelper)

- (NSArray *)keys;
- (NSSet *)keySet;
- (BOOL)containsKey:(id)key;
- (NSArray *)values;

@end
