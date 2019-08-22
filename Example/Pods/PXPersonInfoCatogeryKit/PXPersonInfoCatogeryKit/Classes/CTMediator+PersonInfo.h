//
//  CTMediator+PersonInfo.h
//  Pods-PXPersonInfoCatogeryKit_Example
//
//  Created by os on 2019/8/22.
//


#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (PersonInfo)

- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
