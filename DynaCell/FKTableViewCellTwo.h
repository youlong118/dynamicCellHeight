//
//  FKTableViewCellTwo.h
//  DynaCell
//
//  Created by Sam Feng on 15/9/17.
//  Copyright (c) 2015年 crazyit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FKTableViewCellTwo : UITableViewCell

@property (strong,nonatomic) NSString * value;
@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UIImageView *grow;


@end
