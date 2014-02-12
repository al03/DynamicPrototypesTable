//
//  ViewController.m
//  DynamicPrototypesTable
//
//  Created by Albert on 2/10/14.
//  Copyright (c) 2014 AlbertMao. All rights reserved.
//

#import "ViewController.h"
#import "DynamicPrototypesCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 68.0f;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *strCellId;
    if (indexPath.row == 0) {
        strCellId = @"cellSlider";
    }else if (indexPath.row == 1){
        strCellId = @"cellSegmented";
    }else{
        strCellId = @"cellSwitch";
    }
    DynamicPrototypesCell *cell = [tableView dequeueReusableCellWithIdentifier:strCellId];
    
    //set cell source
    if ([strCellId isEqualToString:@"cellSlider"]) {
        cell.labelFlag.text = @"slider";
    }else if([strCellId isEqualToString:@"cellSegmented"]){
        cell.labelFlag.text = @"segmented";
    }else{
        cell.labelFlag.text = @"switch";
    }
    return cell;
}

@end
