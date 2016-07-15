//
//  ViewController.m
//  button多选与单选
//
//  Created by GM on 16/7/14.
//  Copyright © 2016年 zhuoran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *oneBtn;

@property (weak, nonatomic) IBOutlet UIButton *twoBtn;

@property (weak, nonatomic) IBOutlet UIButton *threeBtn;

/**
 *  前一个按钮
 */
@property (nonatomic, weak) UIButton *preBtn;

/**
 *  单选传参
 */
@property (nonatomic, strong) NSString *btnTitle;

/**
 *  多选传参
 */
@property (nonatomic, strong) NSString *one;
@property (nonatomic, strong) NSString *two;
@property (nonatomic, strong) NSString *three;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //oneBtn
    [self.oneBtn setTitle:@"one" forState:UIControlStateNormal];
    [self.oneBtn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    [self.oneBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [self.oneBtn setBackgroundImage:[UIImage imageNamed:@"registerButtonbg"] forState:UIControlStateNormal];
    [self.oneBtn setBackgroundImage:[UIImage imageNamed:@"loginButtonbg"] forState:UIControlStateSelected];
    
    //twoBtn
    [self.twoBtn setTitle:@"two" forState:UIControlStateNormal];
    [self.twoBtn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    [self.twoBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [self.twoBtn setBackgroundImage:[UIImage imageNamed:@"registerButtonbg"] forState:UIControlStateNormal];
    [self.twoBtn setBackgroundImage:[UIImage imageNamed:@"loginButtonbg"] forState:UIControlStateSelected];
    
    //threeBtn
    [self.threeBtn setTitle:@"three" forState:UIControlStateNormal];
    [self.threeBtn setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    [self.threeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [self.threeBtn setBackgroundImage:[UIImage imageNamed:@"registerButtonbg"] forState:UIControlStateNormal];
    [self.threeBtn setBackgroundImage:[UIImage imageNamed:@"loginButtonbg"] forState:UIControlStateSelected];
    
    
    
}


- (IBAction)selectedBtn:(UIButton *)sender
{
    
    //单选
//    if (_preBtn == nil)
//    {
//        sender.selected = YES;
//        _preBtn = sender;
//        
//    }
//    else if (_preBtn != nil && _preBtn == sender)
//    {
//        sender.selected = !sender.selected;
//    }
//    else if (_preBtn != nil && _preBtn != sender)
//    {
//        _preBtn.selected = NO;
//        sender.selected = YES;
//        _preBtn = sender;
//    }
//    
//    //传值
//    self.btnTitle = sender.titleLabel.text;
    
    
    //多选
    sender.selected = !sender.selected;
    
    
    switch (sender.tag) {
        case 0:
            if (sender.selected == YES) {
                self.one = sender.titleLabel.text;
            }else{
                self.one = nil;
            }
            break;
        case 1:
            if (sender.selected == YES) {
                self.two = sender.titleLabel.text;
            }else{
                self.two = nil;
            }
            break;
        case 2:
            if (sender.selected == YES) {
                self.three = sender.titleLabel.text;
            }else{
                self.three = nil;
            }
            break;
            
        default:
            break;
    }

}


- (IBAction)confirmBtnClick:(UIButton *)sender
{
    NSLog(@"btnTitle: %@", _btnTitle);
    NSLog(@"one: %@, two: %@, three: %@", _one, _two, _three);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
