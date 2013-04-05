//
//  PlayerCell.h
//  Ratings
//
//  Created by ido franindo on 4/4/13.
//  Copyright (c) 2013 suitmedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *gameLabel;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView;

@end
