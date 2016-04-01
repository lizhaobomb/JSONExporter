//
//  LangModel.m
//  JSONExporter
//
//  Created by lizhao on 16/3/23.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "LangModel.h"
#import "Constructor.h"
#import "DataType.h"
#import "UtilityMethod.h"
#import "HeaderFileData.h"

@interface LangModel ()

@property (nonatomic, strong) NSString *arrayType;
@property (nonatomic, strong) NSArray *basicTypesWithSpecialFetchingNeeds;
@property (nonatomic, strong) NSArray *basicTypesWithSepcialFetchingNeedsReplacements;
@property (nonatomic, strong) NSArray *basicTypesWithSpecialStoringNeeds;
@property (nonatomic, strong) NSString *booleanGetter;
@property (nonatomic, strong) NSString *briefDescription;
@property (nonatomic, strong) NSMutableArray *constructors;
@property (nonatomic, strong) DataType *dataTypes;
@property (nonatomic, strong) NSString *displayLangName;
@property (nonatomic, strong) NSString *fileExtension;
@property (nonatomic, strong) NSString *genericType;
@property (nonatomic, strong) NSString *getter;
@property (nonatomic, strong) NSString *importHeaderFile;
@property (nonatomic, strong) NSString *importForEachCustomType;
@property (nonatomic, strong) NSString *instanceVarDefinition;
@property (nonatomic, strong) NSString *instanceVarWithSpecialDefinition;
@property (nonatomic, strong) NSString *typesNeedSpecialDefinition;
@property (nonatomic, strong) NSString *langName;
@property (nonatomic, strong) NSString *constVarDefinition;
@property (nonatomic, strong) NSString *modelDefinition;
@property (nonatomic, strong) NSString *modelDefinitionWithParent;
@property (nonatomic, strong) NSString *defaultParentWithUtilityMethods;
@property (nonatomic, strong) NSString *modelEnd;
@property (nonatomic, strong) NSString *modelStart;
@property (nonatomic, strong) NSString *setter;
@property (nonatomic, strong) NSString *staticImports;
@property (nonatomic, strong) NSString *supportsFirstLineStatement;
@property (nonatomic, strong) NSString *firstLineHint;
@property (nonatomic, strong) NSMutableArray *utilityMethods;
@property (nonatomic, strong) NSArray *reservedKeywords;
@property (nonatomic, strong) NSArray *wordsToRemoveToGetArrayElementsType;
@property (nonatomic, strong) HeaderFileData *headerFileData;
@property (nonatomic, assign) BOOL supportMutualRelationships;

@end

@implementation LangModel

- (instancetype)initFromDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        _arrayType = dictionary[@"arrayType"];
        _basicTypesWithSpecialStoringNeeds = dictionary[@"basicTypesWithSpecialStoringNeeds"];
        _basicTypesWithSpecialFetchingNeeds = dictionary[@"basicTypesWithSpecialFetchingNeeds"];
        _basicTypesWithSepcialFetchingNeedsReplacements = dictionary[@"basicTypesWithSepcialFetchingNeedsReplacements"];
        _booleanGetter = dictionary[@"booleanGetter"];
        _briefDescription = dictionary[@"briefDescription"];
        _constructors = [NSMutableArray arrayWithCapacity:4];
        NSArray *tmpConstuctors = dictionary[@"constructors"];
        if (tmpConstuctors) {
            for (NSDictionary *dict in tmpConstuctors) {
                Constructor *constructor = [[Constructor alloc] initFromDictionary:dict];
                [_constructors addObject:constructor];
            }
        }
        
        NSDictionary *dataTypesData = dictionary[@"dataTypes"];
        if (dataTypesData) {
            _dataTypes = [[DataType alloc] initFromDictionary:dataTypesData];
        }
        
        _importHeaderFile = dictionary[@"importHeaderFile"];
        _displayLangName = dictionary[@"displayLangName"];
        _fileExtension = dictionary[@"fileExtension"];
        _genericType = dictionary[@"genericType"];
        _getter = dictionary[@"getter"];
        _importForEachCustomType = dictionary[@"importForEachCustomType"];
        _instanceVarDefinition = dictionary[@"instanceVarDefinition"];
        _instanceVarWithSpecialDefinition = dictionary[@"instanceVarWithSpecialDefinition"];
        _typesNeedSpecialDefinition = dictionary[@"typesNeedSpecialDefinition"];
        _langName = dictionary[@"langName"];
        _constVarDefinition = dictionary[@"constVarDefinition"];
        _modelDefinition = dictionary[@"modelDefinition"];
        _modelDefinitionWithParent = dictionary[@"modelDefinitionWithParent"];
        _defaultParentWithUtilityMethods = dictionary[@"defaultParentWithUtilityMethods"];
        _modelEnd = dictionary[@"modelEnd"];
        _modelStart = dictionary[@"modelStart"];
        _setter = dictionary[@"setter"];
        _staticImports = dictionary[@"staticImports"];
        _supportsFirstLineStatement = dictionary[@"supportsFirstLineStatement"];
        _firstLineHint = dictionary[@"firstLineHint"];
        _utilityMethods = [NSMutableArray array];
        NSArray *utilityMethodsArray = dictionary[@"utilityMethods"];
        for (NSDictionary *dict in utilityMethodsArray) {
            UtilityMethod *method = [[UtilityMethod alloc] initFromDictionary:dict];
            [_utilityMethods addObject:method];
        }
        
        _reservedKeywords = dictionary[@"reservedKeywords"];
        _wordsToRemoveToGetArrayElementsType = dictionary[@"wordsToRemoveToGetArrayElementsType"];
        
        NSDictionary *headerFileDataData = dictionary[@"headerFileData"];
        if (headerFileDataData) {
            _headerFileData = [[HeaderFileData alloc] initFromDictionary:headerFileDataData];
        }
        
        _supportMutualRelationships = [dictionary[@"supportMutualRelationships"] boolValue];
    }
    return self;
}

@end
