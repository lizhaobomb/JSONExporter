//
//  FilePreviewCell.m
//  JSONExporter
//
//  Created by lizhao on 16/4/5.
//  Copyright © 2016年 lizhao. All rights reserved.
//

#import "FilePreviewCell.h"
#import "NoodleLineNumberView.h"
@interface FilePreviewCell () <NSTextViewDelegate>

@property (nonatomic, weak) IBOutlet NSTextFieldCell *classNameLabel;
@property (nonatomic, weak) IBOutlet NSButton *constructors;
@property (nonatomic, weak) IBOutlet NSButton *utilities;
@property (nonatomic, strong) IBOutlet NSTextView *textView;
@property (nonatomic, weak) IBOutlet NSScrollView *scrollView;

@end

@implementation FilePreviewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    if (self.textView != nil) {
        self.textView.delegate = self;
        [self setupNumberedTextView];
    }
}

- (void)setupNumberedTextView {
    NoodleLineNumberView *lineNumberView = [[NoodleLineNumberView alloc] initWithScrollView:self.scrollView];
    self.scrollView.hasHorizontalRuler = NO;
    self.scrollView.hasVerticalRuler = YES;
    self.scrollView.verticalRulerView = lineNumberView;
    self.scrollView.rulersVisible = YES;
    self.textView.font = [NSFont userFixedPitchFontOfSize:[NSFont smallSystemFontSize]];
}

- (IBAction)toggleConstructors:(NSButtonCell *)sender {

}

@end
