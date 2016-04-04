//
//  UCGroupPostRequest.h
//  Cloudkit test
//
//  Created by Yury Nechaev on 04.04.16.
//  Copyright © 2016 Riders. All rights reserved.
//

#import "UCAPIRequest.h"

@interface UCGroupPostRequest : UCAPIRequest

+ (instancetype)requestWithFileIDs:(NSArray<NSString *> *)fileIDs;

@end
