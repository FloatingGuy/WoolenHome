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


@interface MainViewController () <UITabBarDelegate,UITabBarControllerDelegate>

@end

@implementation MainViewController

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
    ForumViewController *forumVC = [[ForumViewController alloc] init];
    PublishViewController *publishVC = [[PublishViewController alloc] init];
    UserViewController *userVC = [[UserViewController alloc] init];
    
    self.delegate = self;
    self.viewControllers = [NSArray arrayWithObjects:forumVC, publishVC, userVC, nil];
    
    UITabBar *tabBar = self.tabBar;
//    tabBar.tintColor = [UIColor whiteColor];
//    tabBar.backgroundColor = [UIColor grayColor];
    
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    
    tabBarItem1.title = NSLocalizedString(@"动态", nil);
    tabBarItem2.title = NSLocalizedString(@"发布", nil);
    tabBarItem3.title = NSLocalizedString(@"我的", nil);
}

#pragma --- tabbar
- (void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSInteger curIndex = tabBarController.selectedIndex;
    NSLog(@"你点击了第%ld个tabbar",curIndex);
//    [_msgVC notifyTabChanged:curIndex];
    
}

@end
