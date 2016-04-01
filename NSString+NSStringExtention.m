//
//  NSString+NSStringExtention.m
//  JSONExporter
//
//  Created by lizhao on 16/3/23.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "NSString+NSStringExtention.h"

@implementation NSString (NSStringExtention)


/**
转换一个复数单词为单数形式，比如families会被转成family，animals变成animal，本方法不考虑不规则的复数形式
 */
- (NSString *)toSingular {
    NSString *singular = self;
    NSInteger length = self.length;

    if (length > 3) {
        NSRange range = NSMakeRange(length - 3, 3);
        NSString *lastThreeChars = [self substringWithRange:range];
        if ([lastThreeChars isEqualToString:@"ies"]) {
            singular = [self stringByReplacingOccurrencesOfString:lastThreeChars
                                                       withString:@"y"
                                                          options:NSCaseInsensitiveSearch
                                                            range:range];
            return singular;
        }
    }
    
    if (length > 2) {
        NSRange range = NSMakeRange(length - 1, 1);
        NSString *lastChar = [self substringWithRange:range];
        if ([lastChar isEqualToString:@"s"]) {
            singular = [self stringByReplacingOccurrencesOfString:lastChar
                                                       withString:@""
                                                          options:NSCaseInsensitiveSearch
                                                            range:range];
            return singular;
        }
    }
    return singular;
}

- (NSString *)lowercaseFirstChar {
    if (self.length > 0) {
        NSInteger startIndex = 0;
        NSRange range = NSMakeRange(startIndex, 1);
        NSString *firstLowercaseChar = [[self substringWithRange:range] lowercaseString];
        
        return [self stringByReplacingCharactersInRange:range withString:firstLowercaseChar];
    }
    return self;
}

- (NSString *)uppercaseFirstChar {
    if (self.length > 0) {
        NSInteger startIndex = 0;
        NSRange range = NSMakeRange(startIndex, 1);
        NSString *firstUppercaseChar = [[self substringWithRange:range] uppercaseString];
        return [self stringByReplacingCharactersInRange:range withString:firstUppercaseChar];
    }
    return self;
}

@end
