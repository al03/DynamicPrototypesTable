//
//  DynamicPrototypesCell.m
//  DynamicPrototypesTable
//
//  Created by Albert on 2/10/14.
//  Copyright (c) 2014 AlbertMao. All rights reserved.
//

#import "DynamicPrototypesCell.h"

@implementation DynamicPrototypesCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
