//
//  DataType.m
//  JSONExporter
//
//  Created by lizhao on 16/3/23.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "DataType.h"

@interface DataType ()

@property (nonatomic, strong) NSString * boolType;
@property (nonatomic, strong) NSString * characterType;
@property (nonatomic, strong) NSString * doubleType;
@property (nonatomic, strong) NSString * floatType;
@property (nonatomic, strong) NSString * intType;
@property (nonatomic, strong) NSString * longType;
@property (nonatomic, strong) NSString * stringType;

@end

@implementation DataType

- (instancetype)initFromDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        _boolType = dictionary[@"boolType"];
        _characterType = dictionary[@"characterType"];
        _doubleType = dictionary[@"doubleType"];
        _floatType = dictionary[@"floatType"];
        _intType = dictionary[@"intType"];
        _longType = dictionary[@"longType"];
        _stringType = dictionary[@"stringType"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithCapacity:4];
    if (_boolType) {
        dictionary[@"boolType"] = _boolType;
    }
    if (_characterType) {
        dictionary[@"characterType"] = _characterType;
    }
    if (_doubleType) {
        dictionary[@"doubleType"] = _doubleType;
    }
    if (_floatType) {
        dictionary[@"floatType"] = _floatType;
    }
    if (_intType) {
        dictionary[@"intType"] = _intType;
    }
    if (_longType) {
        dictionary[@"longType"] = _longType;
    }
    if (_stringType) {
        dictionary[@"stringType"] = _stringType;
    }
    return dictionary;
}

@end
