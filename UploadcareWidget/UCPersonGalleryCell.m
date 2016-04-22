//
//  UCPersonGalleryCell.m
//  ExampleProject
//
//  Created by Yury Nechaev on 19.04.16.
//  Copyright © 2016 Uploadcare. All rights reserved.
//

#import "UCPersonGalleryCell.h"

static NSString *const kCellIdentifier = @"personCell";

@interface UCPersonGalleryCell ()
@property (nonatomic, strong) UIView *pixelView;
@end

@implementation UCPersonGalleryCell

#define IMAGE_SIZE 30

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.titleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        self.imageView.layer.cornerRadius = IMAGE_SIZE /2;
        self.imageView.layer.masksToBounds = YES;
        self.imageView.layer.borderWidth = 1.0 / [UIScreen mainScreen].scale;
        self.imageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        NSDictionary *views = @{@"imageView":self.imageView,
                                @"titleLabel":self.titleLabel};
        NSDictionary *metrics = @{@"offset":@(15)};
        NSArray *horizontal = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-offset-[imageView]-offset-[titleLabel]|" options:0 metrics:metrics views:views];
        NSArray *vertical = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[titleLabel]|" options:0 metrics:nil views:views];
        
        [self.contentView  addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:IMAGE_SIZE]];
        [self.contentView  addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:IMAGE_SIZE]];
        [self.contentView addConstraint:
         [NSLayoutConstraint constraintWithItem:self.imageView
                                      attribute:NSLayoutAttributeCenterY
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self.contentView
                                      attribute:NSLayoutAttributeCenterY
                                     multiplier:1
                                       constant:0]];
        

        
        self.pixelView = [[UIView alloc] init];
        self.pixelView.backgroundColor = [UIColor lightGrayColor];
        [self.pixelView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.pixelView];
        [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.pixelView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.0f]];
        [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.pixelView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.0f]];
        [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.pixelView attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.0f]];
        [self.contentView  addConstraint:[NSLayoutConstraint constraintWithItem:self.pixelView
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:1.0 / [UIScreen mainScreen].scale]];
        
        [self.contentView addConstraints:horizontal];
        [self.contentView addConstraints:vertical];
    }
    return self;
}

+ (NSString *)cellIdentifier {
    return kCellIdentifier;
}

@end
