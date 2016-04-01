//
//  ViewController.m
//  JSONExporter
//
//  Created by lizhao on 16/3/23.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "ViewController.h"
#import "NSString+NSStringExtention.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *families = @"families";
    NSString *fishes = @"fishes";
    NSString *uppercaseChar = @"abcdef";
    NSString *lowercaseChar = @"ABCDEF";
    NSLog(@"%@,%@,%@,%@",families.toSingular, fishes.toSingular,uppercaseChar.uppercaseFirstChar,lowercaseChar.lowercaseFirstChar);
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
