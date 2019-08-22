//
//  CTMediator+PersonPreference.h
//  Pods-PXPersonPrefrenceCatogeryKit_Example
//
//  Created by os on 2019/8/22.
//


#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ResultBlock)(BOOL isLike);

@interface CTMediator (PersonPreference)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block;

@end

NS_ASSUME_NONNULL_END
