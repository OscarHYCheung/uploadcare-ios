//
//  UCSocialChunk.m
//  ExampleProject
//
//  Created by Yury Nechaev on 06.04.16.
//  Copyright © 2016 Uploadcare. All rights reserved.
//

#import "UCSocialChunk.h"

@implementation UCSocialChunk

+ (NSDictionary *)mapping {
    return @{@"path":@"path_chunk",
             @"title":@"title"};
}

+ (NSDictionary *)collectionMapping {
    return nil;
}

@end