//
//  HeaderFileData.m
//  JSONExporter
//
//  Created by lizhao on 16/3/24.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "HeaderFileData.h"

@interface HeaderFileData ()

@property (nonatomic, strong) NSString *constructorSignatures;
@property (nonatomic, strong) NSString *headerFileExtension;
@property (nonatomic, strong) NSString *importForEachCustomType;
@property (nonatomic, strong) NSString *importParentHeaderFile;
@property (nonatomic, strong) NSString *instanceVarDefinition;
@property (nonatomic, strong) NSString *instanceVarWithSpecialDefinition;
@property (nonatomic, strong) NSString *modelDefinition;
@property (nonatomic, strong) NSString *modelDefinitionWithParent;
@property (nonatomic, strong) NSString *defaultParentWithUtilityMethods;
@property (nonatomic, strong) NSString *modelEnd;
@property (nonatomic, strong) NSString *modelStart;
@property (nonatomic, strong) NSString *staticImports;
@property (nonatomic, strong) NSString *typesNeedSpecialDefinition;
@property (nonatomic, strong) NSString *utilityMethodSignatures;

@end

@implementation HeaderFileData

- (instancetype)initFromDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
    
        _constructorSignatures = dictionary[@"constructorSignatures"];
        _headerFileExtension = dictionary[@"headerFileExtension"];
        _importParentHeaderFile = dictionary[@"importParentHeaderFile"];
        _importForEachCustomType = dictionary[@"importForEachCustomType"];
        _instanceVarDefinition = dictionary[@"instanceVarDefinition"];
        _instanceVarWithSpecialDefinition = dictionary[@"instanceVarWithSpecialDefinition"];
        _modelDefinition = dictionary[@"modelDefinition"];
        _modelDefinitionWithParent = dictionary[@"modelDefinitionWithParent"];
        _modelEnd = dictionary[@"modelEnd"];
        _modelStart = dictionary[@"modelStart"];
        _defaultParentWithUtilityMethods = dictionary[@"defaultParentWithUtilityMethods"];
        _staticImports = dictionary[@"staticImports"];
        _typesNeedSpecialDefinition = dictionary[@"typesNeedSpecialDefinition"];
        _utilityMethodSignatures = dictionary[@"utilityMethodSignatures"];
    }
    return self;
}

@end
