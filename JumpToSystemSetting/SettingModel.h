//
//  SettingModel.h
//  JumpToSystemSetting
//
//  Created by BoYun on 15/7/17.
//  Copyright (c) 2015年 Zhan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *prefs;

+ (SettingModel *)settingWithName:(NSString *)name prefs:(NSString *)prefs;

@end
