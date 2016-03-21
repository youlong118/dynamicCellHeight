//
//  FKViewController.m
//  DynaCell
//
//  Created by yeeku on 13-9-25.
//  Copyright (c) 2013年 crazyit.org. All rights reserved.
//

#import "FKViewController.h"
#import "FKTableViewCell.h"
#import "FKTableViewCellTwo.h"


@interface FKViewController ()<FKTableViewCellDelegate,UITableViewDataSource,UITableViewDelegate>

@property (strong,nonatomic) NSMutableArray *everyCellsHeight;

@end

@implementation FKViewController

NSArray* books;

- (void)viewDidLoad
{
	[super viewDidLoad];
	_tableView.dataSource = self;
    _tableView.delegate = self;
    
	books = [NSArray arrayWithObjects:@"cell2",	@"cell1", @"cell2" , @"cell1", nil];
    
    UINib *cellNib = [UINib nibWithNibName:@"FKTableViewCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"cell1"];
    _everyCellsHeight = [[NSMutableArray alloc] init];

}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
	return books.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
	cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	
	NSUInteger rowNo = indexPath.row;  // 获取行号
	// 根据行号的奇偶性使用不同的标识符
    
    if( [[books objectAtIndex:rowNo] isEqualToString:@"cell1"] ){
        FKTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        if(cell == nil)
        {
            // 创建自定义的FKBookTableCell对象
            cell = [[FKTableViewCell alloc]
                    initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        }
        cell.index = rowNo;
        cell.title.text = [books objectAtIndex:rowNo];
        cell.delegate = self;
        
        return cell;
    }else{
        FKTableViewCellTwo *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        if(cell == nil)
        {
            // 创建自定义的FKBookTableCell对象
            cell = [[FKTableViewCellTwo alloc]
                    initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
        }
        cell.value = [books objectAtIndex:rowNo];
        cell.title.text = [books objectAtIndex:rowNo];
        return cell;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(_everyCellsHeight.count <= indexPath.row){
        _everyCellsHeight[indexPath.row] = [NSNumber numberWithFloat:50.0f];
        return 50;
    }else{
        NSNumber * cellheight = _everyCellsHeight[indexPath.row];
        return  [cellheight floatValue];
    }
}

-(void)updateTableHeight:(NSUInteger)index{
    if(_everyCellsHeight.count > index){
        CGFloat newheight = [_everyCellsHeight[index] floatValue] + 20;
        _everyCellsHeight[index] = [NSNumber numberWithFloat:newheight];
        [_tableView reloadData];
    }
}
@end
