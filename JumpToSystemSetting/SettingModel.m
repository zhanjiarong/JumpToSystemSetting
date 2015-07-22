//
//  SettingModel.m
//  JumpToSystemSetting
//
//  Created by BoYun on 15/7/17.
//  Copyright (c) 2015年 Zhan. All rights reserved.
//

#import "SettingModel.h"

@implementation SettingModel

+ (SettingModel *)settingWithName:(NSString *)name prefs:(NSString *)prefs
{
    SettingModel *model = [[SettingModel alloc] init];
    model.name = name;
    model.prefs = prefs;
    return model;
}

@end
