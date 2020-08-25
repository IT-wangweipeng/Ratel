//
//  ViewController.m
//  RatelOC
//
//  Created by Apple on 2019/7/5.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Fizz.h"
#import "FMDB.h"

typedef void(^RatelBlock)();

@interface ViewController ()

@end

@implementation ViewController

/// <#Description#>
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"char: %lu",sizeof(char));
    NSLog(@"int:%lu",sizeof(int));
    NSLog(@"short:%lu",sizeof(short));
    NSLog(@"long: %lu",sizeof(long));
    NSLog(@"unsigned int:%lu",sizeof(unsigned int));
    NSLog(@"unsigned short:%lu",sizeof(unsigned short));
    NSLog(@"unsigned long: %lu",sizeof(unsigned long));
    NSLog(@"long long:%lu",sizeof(long long));
    NSLog(@"NSInteger: %lu",sizeof(NSInteger));
    NSLog(@"NSUInteger:%lu",sizeof(NSUInteger));
    

    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@",[NSThread currentThread]);
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
         NSLog(@"%@",[NSThread currentThread]);
        //block的写法
        dispatch_async(dispatch_get_main_queue(), ^{
             NSLog(@"%@",[NSThread currentThread]);
        });
    });
    
}


@end
