//
//  FKTableViewCell.m
//  DynaCell
//
//  Created by Sam Feng on 15/9/17.
//  Copyright (c) 2015年 crazyit.org. All rights reserved.
//

#import "FKTableViewCell.h"

@implementation FKTableViewCell

- (void)awakeFromNib {
}
//- (void)handleTapFrom:(UISwipeGestureRecognizer*)recognizer {
//    NSLog(@"%@",self.value);
//}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (IBAction)click:(UIButton *)sender {
    NSLog(@"%@",self.title.text);
    [_delegate updateTableHeight:_index];
    
//    UITapGestureRecognizer* recognizer;
//    recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
//    recognizer.numberOfTapsRequired = 1;
//    [self.grow addGestureRecognizer:recognizer];
}

@end
