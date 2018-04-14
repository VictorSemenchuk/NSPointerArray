//
//  ViewController.m
//  NSPointerArray
//
//  Created by Victor Macintosh on 14/04/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MARK: Create pointer array and add 10 objects inside.
    NSPointerArray *pointerArray = [[NSPointerArray alloc] initWithOptions: NSPointerFunctionsWeakMemory];
    for(int i = 1; i <= 10; i++) {
        NSNumber *num = [NSNumber numberWithInt:i];
        [pointerArray addPointer:num];
    }
    
    //MARK: Check arrays count.
    NSLog(@"Count = %lu", [pointerArray count]);
    
    //MARK: Nil several objects, added to the array and check count once again.
    [pointerArray replacePointerAtIndex:1 withPointer:nil];
    [pointerArray replacePointerAtIndex:4 withPointer:nil];
    [pointerArray replacePointerAtIndex:8 withPointer:nil];
    NSLog(@"New count = %lu", [pointerArray count]);
    
    //Releasing
    [pointerArray release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
