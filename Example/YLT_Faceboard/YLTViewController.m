//
//  YLTViewController.m
//  YLT_Faceboard
//
//  Created by xphaijj0305@126.com on 11/17/2017.
//  Copyright (c) 2017 xphaijj0305@126.com. All rights reserved.
//

#import "YLTViewController.h"
#import <YLT_BaseLib/YLT_BaseLib.h>
#import <YLT_Faceboard/YLT_FaceboardView.h>
#import <ReactiveObjC/ReactiveObjC.h>

@interface YLTViewController ()

@property (weak, nonatomic) IBOutlet UIView *keyboardView;
@property (weak, nonatomic) IBOutlet UITextField *inputView;

@end

@implementation YLTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    @weakify(self);
    [YLT_FaceboardView showFaceboardConfig:^(YLT_FaceboardConfig *config) {
        @strongify(self);
        config.superView = self.keyboardView;
        config.inputView = self.inputView;
        config.toolBarHidden = NO;
        
        YLT_FaceboardGroupModel *mo = [YLT_FaceboardGroupModel normalGroupModel];
        [config.keyboards addObject:mo];
        YLT_FaceboardGroupModel *model = [YLT_FaceboardGroupModel normalGroupModel];
        model.countPreRow = 5;
        model.row = 3;
        model.faceboardType = YLT_FaceboardType_Other;
        [config.keyboards addObject:model];
        YLT_FaceboardGroupModel *gif = [YLT_FaceboardGroupModel groupModelWithImage:[UIImage imageNamed:@"001"] bundlePath:[[NSBundle mainBundle] bundlePath] plistName:@"Face.plist"];
        gif.countPreRow = 4;
        gif.row = 2;
        gif.faceboardType = YLT_FaceboardType_Other;
        [config.keyboards addObject:gif];
        
        UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        addBtn.backgroundColor = [UIColor redColor];
        [config.leftBtns addObject:addBtn];
        
        UIButton *sendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        sendBtn.backgroundColor = [UIColor greenColor];
        [config.rightBtns addObject:sendBtn];
        
        config.toolBarAction = ^(NSInteger index) {
            switch (index) {
                case 0:{//add btn
                }
                    break;
                case 1: {// 发送
                }
                    break;
                default:
                    break;
            }
        };
        config.faceAction = ^(YLT_FaceboardType faceboardType, YLT_FaceModel *faceModel) {
            NSLog(@"%zd -- >> %@", faceboardType, faceModel.faceName);
        };
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
