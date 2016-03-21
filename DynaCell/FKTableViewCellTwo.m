//
//  FKTableViewCellTwo.m
//  DynaCell
//
//  Created by Sam Feng on 15/9/17.
//  Copyright (c) 2015年 crazyit.org. All rights reserved.
//

#import "FKTableViewCellTwo.h"

@implementation FKTableViewCellTwo

- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)clickbtn:(UIButton *)sender {
        NSLog(@"%@",self.value);
    UITapGestureRecognizer* recognizer;
    recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
    recognizer.numberOfTapsRequired = 1;
    [self.grow addGestureRecognizer:recognizer];
}


- (void)handleTapFrom:(UISwipeGestureRecognizer*)recognizer {
    NSLog(@"%@",self.value);
}


@end
