//
//  NSBundle+SubBundle.m
//  Pods-PXXibPersonKit_Example
//
//  Created by os on 2019/8/22.
//

#import "NSBundle+SubBundle.h"

@implementation NSBundle (SubBundle)


+ (instancetype)px_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass{
    //并没有拿到子bundle
    NSBundle *bundle = [NSBundle bundleForClass:targetClass];
    //在这个路径下找到子bundle的路径
    NSString *path = [bundle pathForResource:bundleName ofType:@"bundle"];
    //根据路径拿到子bundle
    return path?[NSBundle bundleWithPath:path]:[NSBundle mainBundle];
    
    /*
     这种方式也可以
     NSBundle *bundle = [NSBundle bundleForClass:targetClass];
     NSURL *url = [bundle URLForResource:bundleName withExtension:@"bundle"];
     return path?[NSBundle bundleWithURL:url]:[NSBundle mainBundle];
     */
}

@end
