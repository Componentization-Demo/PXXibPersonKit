//
//  UIImage+pxBundle.h
//  Pods-PXCommonKit_Example
//
//  Created by os on 2019/8/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (pxBundle)

+ (instancetype)px_imgWithName:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END
