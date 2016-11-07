//
//  Dog.h
//  REALM数据库
//
//  Created by sunny on 2016/10/28.
//  Copyright © 2016年 sunny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm.h>
@interface Dog : RLMObject
@property NSString *name;
@property NSData   *picture;
@property NSInteger age;

@end
RLM_ARRAY_TYPE(Dog);
