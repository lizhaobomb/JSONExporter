//
//  UtilityMethod.m
//  JSONExporter
//
//  Created by lizhao on 16/3/24.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "UtilityMethod.h"

@interface UtilityMethod ()

@property (nonatomic, strong) NSString *body;
@property (nonatomic, strong) NSString *bodyEnd;
@property (nonatomic, strong) NSString *bodyStart;
@property (nonatomic, strong) NSString *comment;
@property (nonatomic, strong) NSString *forEachArrayOfCustomTypeProperty;
@property (nonatomic, strong) NSString *forEachProperty;
@property (nonatomic, strong) NSString *forEachCustomTypeProperty;
@property (nonatomic, strong) NSString *returnStatement;
@property (nonatomic, strong) NSString *signature;
@property (nonatomic, strong) NSString *forEachPropertyWithSpecialStoringNeeds;

@end

@implementation UtilityMethod

- (instancetype)initFromDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        _forEachCustomTypeProperty = dictionary[@"forEachCustomTypeProperty"];
        _body = dictionary[@"body"];
        _bodyEnd = dictionary[@"bodyEnd"];
        _bodyStart = dictionary[@"bodyStart"];
        _comment = dictionary[@"comment"];
        _forEachArrayOfCustomTypeProperty = dictionary[@"forEachArrayOfCustomTypeProperty"];
        _forEachProperty = dictionary[@"forEachProperty"];
        _returnStatement = dictionary[@"returnStatement"];
        _signature = dictionary[@"signature"];
        _forEachPropertyWithSpecialStoringNeeds = dictionary[@"forEachPropertyWithSpecialStoringNeeds"];
    }
    return self;
}

@end
