//
//  Person.h
//  REALM数据库
//
//  Created by sunny on 2016/10/28.
//  Copyright © 2016年 sunny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm.h>
#import "Dog.h"

@interface Person : RLMObject
@property NSString             *name;
@property RLMArray<Dog> * dogs;

@end


