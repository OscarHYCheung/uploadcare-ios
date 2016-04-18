//
//  UCSocialManager.h
//  ExampleProject
//
//  Created by Yury Nechaev on 14.04.16.
//  Copyright © 2016 Uploadcare. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UCSocialEntry;
@class UCSocialSource;

#define SharedSocialManager [UCSocialManager sharedInstance]

@interface UCSocialManager : NSObject

+ (instancetype)  sharedInstance;

- (void)fetchSocialSourcesWithCompletion:(void(^)(NSArray<UCSocialSource*> *response, NSError *error))completion;

- (void)presentDocumentControllerFrom:(UIViewController *)viewController
                             progress:(void(^)(NSUInteger bytesSent, NSUInteger bytesExpectedToSend))progressBlock
                           completion:(void(^)(BOOL completed, NSString *fileId, NSError *error))completionBlock;

@end
