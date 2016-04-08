//
//  UCSocialEntriesRequest.m
//  ExampleProject
//
//  Created by Yury Nechaev on 06.04.16.
//  Copyright © 2016 Uploadcare. All rights reserved.
//

#import "UCSocialEntriesRequest.h"
#import "UCSocialSource.h"
#import "UCSocialEntriesCollection.h"
#import "UCSocialChunk.h"

@interface UCSocialEntriesRequest ()
@property (nonatomic, strong) UCSocialSource *source;
@property (nonatomic, strong) UCSocialChunk *chunk;
@end

@implementation UCSocialEntriesRequest

+ (instancetype)nextPageRequestWithSource:(UCSocialSource *)source
                                  entries:(UCSocialEntriesCollection *)collection
                                    chunk:(UCSocialChunk *)chunk {
    UCSocialEntriesRequest *req = [[UCSocialEntriesRequest alloc] initNextPageWithSource:source collection:collection chunk:chunk];
    return req;

}

+ (instancetype)requestWithSource:(UCSocialSource *)source chunk:(UCSocialChunk *)chunk {
    UCSocialEntriesRequest *req = [[UCSocialEntriesRequest alloc] initWithSource:source chunk:chunk];
    return req;
}

- (id)initWithSource:(UCSocialSource *)source chunk:(UCSocialChunk *)chunk {
    self = [super init];
    if (self) {
        self.source = source;
        self.chunk = chunk;
        self.path = [source.urls.sourceBase stringByAppendingString:chunk.path];
    }
    return self;
}

- (id)initNextPageWithSource:(UCSocialSource *)source
                  collection:(UCSocialEntriesCollection *)collection
                       chunk:(UCSocialChunk *)chunk {
    self = [self initWithSource:source chunk:chunk];
    if (self) {
        self.path = [self.path stringByAppendingPathComponent:collection.nextPagePath];
    }
    return self;
}

@end
