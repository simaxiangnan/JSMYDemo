//
//  JSDiscoverViewController.m
//  JSMY
//
//  Created by wuwu on 2017/6/28.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "JSDiscoverViewController.h"

@interface JSDiscoverViewController ()<UIWebViewDelegate>
@property (nonatomic, strong) UIWebView *webView;

@end

@implementation JSDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"发现";
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self open:@"test.doc" andView:self.myweabl];

//    NSString *path = [[NSBundle mainBundle] pathForResource:@"shenhe" ofType:@"docx"];
//    NSURL *url = [NSURL fileURLWithPath:path];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    [_webView loadRequest:request];
//
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"shenhe" ofType:@"docx"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    _webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    _webView.delegate = self;
    [self.view addSubview:_webView];
    
    [_webView loadRequest:request];
}

//用UIWebView
-(void)open:(NSString*)wordName andView:(UIWebView*)webView
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"shenhe" ofType:nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

@end
