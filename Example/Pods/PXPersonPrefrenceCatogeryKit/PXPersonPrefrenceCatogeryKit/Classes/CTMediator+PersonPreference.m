//
//  CTMediator+PersonPreference.m
//  Pods-PXPersonPrefrenceCatogeryKit_Example
//
//  Created by os on 2019/8/22.
//

#import "CTMediator+PersonPreference.h"

@implementation CTMediator (PersonPreference)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:remind forKey:@"remind"];
    [dic setValue:block forKey:@"myBlock"];
    
    return [self performTarget:@"PXPersonPreferenceViewController" action:@"PXPersonPreferenceViewController" params:dic shouldCacheTarget:NO];
}

@end
