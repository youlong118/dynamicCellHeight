//
//  FKTableViewCell.h
//  DynaCell
//
//  Created by Sam Feng on 15/9/17.
//  Copyright (c) 2015年 crazyit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FKTableViewCellDelegate <NSObject>
-(void)updateTableHeight:(NSUInteger)index;
@end



@interface FKTableViewCell : UITableViewCell

@property (assign,nonatomic) NSUInteger index;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *grow;

@property (assign,nonatomic) id<FKTableViewCellDelegate> delegate;

@end
