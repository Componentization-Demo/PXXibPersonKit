//
//  CTMediator+XibPerson.m
//  Pods-PXXibPersonCatogeryKit_Example
//
//  Created by os on 2019/8/22.
//

#import "CTMediator+XibPerson.h"

@implementation CTMediator (XibPerson)

- (UIViewController *)xibPersonWithImgName:(NSString *)imgName{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:imgName forKey:@"imgName"];
    
    return [self performTarget:@"xibPersonViewController" action:@"xibPersonViewController" params:dic shouldCacheTarget:NO];
}

@end
