//
//  Constructor.m
//  JSONExporter
//
//  Created by lizhao on 16/3/23.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "Constructor.h"

@interface Constructor ()

@property (nonatomic, strong) NSString *bodyEnd;
@property (nonatomic, strong) NSString *bodyStart;
@property (nonatomic, strong) NSString *comment;
@property (nonatomic, strong) NSString *fetchArrayOfCustomTypePropertyFromMap;
@property (nonatomic, strong) NSString *fetchArrayOfBasicTypePropertyFromMap;
@property (nonatomic, strong) NSString *fetchBasicTypePropertyFromMap;
@property (nonatomic, strong) NSString *fetchBasicTypeWithSpecialNeedsFromMap;
@property (nonatomic, strong) NSString *fetchCustomTypePropertyFromMap;
@property (nonatomic, strong) NSString *signature;

@end

@implementation Constructor
- (instancetype)initFromDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        _bodyEnd = dictionary[@"bodyEnd"];
        _bodyStart = dictionary[@"bodyStart"];
        _comment = dictionary[@"comment"];
        _fetchArrayOfCustomTypePropertyFromMap = dictionary[@"fetchArrayOfCustomTypePropertyFromMap"];
        _fetchArrayOfBasicTypePropertyFromMap = dictionary[@"fetchArrayOfBasicTypePropertyFromMap"];
        _fetchBasicTypePropertyFromMap = dictionary[@"fetchBasicTypePropertyFromMap"];
        _fetchBasicTypeWithSpecialNeedsFromMap = dictionary[@"fetchBasicTypeWithSpecialNeedsFromMap"];
        _fetchCustomTypePropertyFromMap = dictionary[@"fetchCustomTypePropertyFromMap"];
        _signature = dictionary[@"signature"];

    }
    return self;
}

@end
