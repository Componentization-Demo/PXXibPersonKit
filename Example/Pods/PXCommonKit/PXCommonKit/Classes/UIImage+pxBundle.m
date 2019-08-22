//
//  UIImage+pxBundle.m
//  Pods-PXCommonKit_Example
//
//  Created by os on 2019/8/22.
//

#import "UIImage+pxBundle.h"

@implementation UIImage (pxBundle)

+ (instancetype)px_imgWithName:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass{
//    NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *curB = [NSBundle bundleForClass:targetClass];
    NSString *imgName = [NSString stringWithFormat:@"%@.png", name];
//    NSString *imgName = [NSString stringWithFormat:@"%@@%zdx.png", name,scale];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundleName];
    NSString *path = [curB pathForResource:imgName ofType:nil inDirectory:dir];
    return path?[UIImage imageWithContentsOfFile:path]:nil;
}

@end
