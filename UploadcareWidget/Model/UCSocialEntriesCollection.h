//
//  UCSocialEntriesCollection.h
//  ExampleProject
//
//  Created by Yury Nechaev on 07.04.16.
//  Copyright © 2016 Uploadcare. All rights reserved.
//

#import "UCSocialObject.h"
#import "UCSocialPath.h"

@class UCSocialEntry;
@class UCSocialChunk;

@interface UCSocialEntriesCollection : UCSocialObject

@property (nonatomic, strong) NSDictionary *nextPage;
@property (nonatomic, strong) UCSocialPath *path;
@property (nonatomic, strong) UCSocialChunk *root;
@property (nonatomic, strong) NSDictionary *userInfo;
@property (nonatomic, strong) NSArray<UCSocialEntry*> *entries;

- (NSString *)nextPagePath;

@end
