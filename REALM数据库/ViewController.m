//
//  ViewController.m
//  REALM数据库
//
//  Created by sunny on 2016/10/28.
//  Copyright © 2016年 sunny. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <Realm.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"this is sunny_branch_02");
    
    
    
//    RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
//    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject stringByAppendingPathComponent:@"MyBundleData.realm"];
//    config.fileURL = [NSURL URLWithString:filePath];
//    NSLog(@"%@",[RLMRealm defaultRealm]);
//    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
//    NSString *dbPath = [docPath stringByAppendingPathComponent:@"db/db.realm"];
////    RLMRealm *realm = [RLMRealm realmWithPath:dbPath];
////    config.readOnly = YES;
////    RLMRealm *realm = [RLMRealm realmWithConfiguration:config error:nil];
//    return;
////    RLMResults <Dog *> *dogs = [Dog objectsInRealm:realm where:@"age > 5"];
    
    //内存数据库
//    RLMRealmConfiguration *config01 = [RLMRealmConfiguration defaultConfiguration];
//    config.inMemoryIdentifier = @"MyInMemoryRealm";
    Person *person = [[Person alloc] init];
    person.name = @"张三";
    Dog *mydog = [[Dog alloc] init];
    mydog.name = @"大黄";
    mydog.age = 1;
//    NSLog(@"狗狗的名字： %@", mydog.name);
//    RLMResults <Dog *> *resluts = [Dog objectsWhere:@"name = '大黄'"];
//    NSLog(@"%zd",resluts.count);
//    
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSLog(@"%@",realm.configuration.fileURL);
    [realm transactionWithBlock:^{
        [realm addObject:mydog];
    }];
    RLMResults <Dog *> *resluts1 = [Dog objectsWhere:@"name = '大黄'"];
    NSLog(@"%zd",resluts1.count);
    
    Person *jim = [[Person alloc] init];
    
    Dog    *rex = [[Dog alloc] init];
    jim.name = nil;
    
    
    RLMResults<Dog *> *someDogs = [Dog objectsWhere:@"name contains 'Fido'"];
    
//    [jim.dogs addObjects:someDogs];
//    [jim.dogs addObject:rex];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
