//
//  NSBundle+SubBundle.h
//  Pods-PXXibPersonKit_Example
//
//  Created by os on 2019/8/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (SubBundle)

+ (instancetype)px_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END
