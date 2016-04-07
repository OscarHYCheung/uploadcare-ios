//
//  UCSocialEntry.h
//  ExampleProject
//
//  Created by Yury Nechaev on 07.04.16.
//  Copyright © 2016 Uploadcare. All rights reserved.
//

#import "UCSocialObject.h"

@class UCSocialEntryAction;

@interface UCSocialEntry : UCSocialObject

@property (nonatomic, strong) UCSocialEntryAction *action;
@property (nonatomic, strong) NSString *mimeType;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *title;

@end
