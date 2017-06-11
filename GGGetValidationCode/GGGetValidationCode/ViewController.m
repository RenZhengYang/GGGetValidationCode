//
//  ViewController.m
//  GGGetValidationCode
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 RenZhengYang. All rights reserved.
//

#import "ViewController.h"
#import "GGVerifyCodeViewBtn.h"

@interface ViewController ()

/*
 * 获取验证码按钮
 */
@property (nonatomic, strong) GGVerifyCodeViewBtn *codeBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //  获取验证码按钮
    GGVerifyCodeViewBtn *codeBtn = [[GGVerifyCodeViewBtn alloc]init];
    //  设置frame 这里我是按照自己需求来
    codeBtn.frame = CGRectMake(100, 100, 80, 30);
    [self.view addSubview:codeBtn];
     [codeBtn addTarget:self action:@selector(codeBtnVerification) forControlEvents:UIControlEventTouchUpInside];
   self.codeBtn = codeBtn;


}

#pragma mark - 获取验证码点击事件
- (void)codeBtnVerification {
    
        /*
         
           调用短信验证码接口
           用户输入的验证码数字传给server，判断请求结果作不同的逻辑处理，根据自己家的产品大大需求来即可....
        */
    
       /*
            if （请求成功且匹配成功验证码数字）{
            [self.codeBtn timeFailBeginFrom:60];  // 倒计时60s
            } else {
            [self.codeBtn timeFailBeginFrom:1]; // 处理请求成功但是匹配不成功的情况，并不需要执行倒计时功能
            }
        */
    
    
     [self.codeBtn timeFailBeginFrom:60];
    
    
}


@end
