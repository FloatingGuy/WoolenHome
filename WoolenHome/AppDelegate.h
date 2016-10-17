//
//  AppDelegate.h
//  WoolenHome
//
//  Created by Master.lyn on 16/10/17.
//  Copyright © 2016年 Master.lyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

