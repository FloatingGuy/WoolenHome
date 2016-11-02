//
//  ViewController.m
//  WoolenHome
//
//  Created by Master.lyn on 16/10/17.
//  Copyright © 2016年 Master.lyn. All rights reserved.
//

#import "MainViewController.h"
#import "ForumViewController.h"
#import "PublishViewController.h"
#import "UserViewController.h"
#import "UIColor+ColorWithHex.h"

@interface MainViewController () <UITabBarDelegate,UITabBarControllerDelegate>
@property (nonatomic, strong) BATabBarController *tabBarController;
@property (nonatomic, assign) BOOL isInited;
@end

@implementation MainViewController


#pragma mark - Lifecycle
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initLayout];
}

- (void) initLayout {
    if(!_isInited){
        _isInited = YES;
        ForumViewController *forumVC = [[ForumViewController alloc] init];
        PublishViewController *publishVC = [[PublishViewController alloc] init];
        UserViewController *userVC = [[UserViewController alloc] init];
        forumVC.view.backgroundColor = [UIColor whiteColor];
        publishVC.view.backgroundColor = [UIColor blueColor];
        userVC.view.backgroundColor = [UIColor grayColor];
        
        
        //论坛
        NSMutableAttributedString *option1 = [[NSMutableAttributedString alloc] initWithString:@"论坛"];
//        [option1 addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica" size:10.5] range:NSMakeRange(0,option1.length)];
        [option1 addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHex:0xF0F2F6] range:NSMakeRange(0,option1.length)];
        BATabBarItem *tabBarItem1 = [[BATabBarItem alloc] initWithImage:[UIImage imageNamed:@"icon1_unselected"] selectedImage:[UIImage imageNamed:@"icon1_selected"] title:option1];
        
        
        //发布
        NSMutableAttributedString *option2 = [[NSMutableAttributedString alloc] initWithString:@"发布"];
//        [option2 addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica" size:10.5] range:NSMakeRange(0,option2.length)];
        [option2 addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHex:0xF0F2F6] range:NSMakeRange(0,option2.length)];
        BATabBarItem *tabBarItem2 = [[BATabBarItem alloc] initWithImage:[UIImage imageNamed:@"icon2_unselected"] selectedImage:[UIImage imageNamed:@"icon2_selected"] title:option2];
        
        
        //我的
        NSMutableAttributedString *option3 = [[NSMutableAttributedString alloc] initWithString:@"我的"];
//        [option3 addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica" size:10.5] range:NSMakeRange(0,option3.length)];
        [option3 addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHex:0xF0F2F6] range:NSMakeRange(0,option3.length)];
        BATabBarItem *tabBarItem3 = [[BATabBarItem alloc] initWithImage:[UIImage imageNamed:@"icon2_unselected"] selectedImage:[UIImage imageNamed:@"icon2_selected"] title:option3];
        
        _tabBarController = [[BATabBarController alloc] init];
        _tabBarController.viewControllers = @[forumVC,publishVC,userVC];
        _tabBarController.tabBarItems = @[tabBarItem1,tabBarItem2,tabBarItem3];
        [_tabBarController setSelectedViewController:forumVC animated:NO];
        
        _tabBarController.delegate = self;
        [self.view addSubview:_tabBarController.view];
    }
}

#pragma mark - BATabBarControllerDelegate
- (void)tabBarController:(BATabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"You did selecte %@",NSStringFromClass([viewController class]));
}

@end
