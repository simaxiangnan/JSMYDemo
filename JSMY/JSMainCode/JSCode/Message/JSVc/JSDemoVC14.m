
//
//  JSDemoVC14.m
//  JSMY
//
//  Created by 李建侯 on 2018/2/6.
//  Copyright © 2018年 jsmysoft. All rights reserved.
//

#import "JSDemoVC14.h"

@interface JSDemoVC14 ()

@property (nonatomic, strong) NSArray *dataAry;

@end

@implementation JSDemoVC14

-(NSArray *)dataAry{
    if (!_dataAry) {
        _dataAry = [NSArray array];
    }
    return _dataAry;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"iOS面试题";
    self.view.backgroundColor = JSKit_Color_White;
    /*! 排列组合 */
    [self combine];
}

//-(void)combine{
//
//    self.dataAry = @[@"1",@"2",@"3",@"4",@"5",@"6"];
////    self.dataAry = @[@"7",@"8",@"9",@"10",@"11",@"12"];
//
//    for (int i= 0; i<self.dataAry.count; i++) {
//        [self combine:(int)self.dataAry.count index:i+1 temp:@""];
//    }
//}
//
////self.dataAry.count表示从n个元素中取出k个元素的取法数
//- (void)combine:(int)n index:(int)k temp:(NSString *)str
//{
//    for(int i = n; i >= k; i--)
//    {
//        if(k > 1)
//        {
//            [self combine:i-1 index:k-1 temp:[NSString stringWithFormat:@"%@%@",str,[self.dataAry objectAtIndex:i-1]]];
//        }
//        else
//        {
//            NSLog(@"%@",[NSString stringWithFormat:@"%@%@",str,[self.dataAry objectAtIndex:i-1]]);
//        }
//    }
//}


-(void)combine{

    self.dataAry = @[@"1",@"2",@"3",@"4",@"5",@"6"];

    for (int i = 0; i<self.dataAry.count; i++) {
        [self combine:(int)self.dataAry.count index:i+1 temp:@""];
    }
}

- (void)combine:(int)n index:(int)k temp:(NSString *)str{
    
    for (int j = n; j >= k; j --) {
        if (k > 1) {
            [self combine:j-1 index:k-1 temp:[NSString stringWithFormat:@"%@%@",str,self.dataAry[j-1]]];
        }else{
            NSLog(@"%@",[NSString stringWithFormat:@"%@%@",str,[self.dataAry objectAtIndex:j-1]]);
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
