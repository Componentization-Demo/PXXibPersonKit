//
//  PXXibPersonViewController.m
//  Pods-PXXibPersonKit_Example
//
//  Created by os on 2019/8/22.
//

#import "PXXibPersonViewController.h"

#import <PXCommonKit/UIImage+pxBundle.h>
#import "NSBundle+SubBundle.h"

@interface PXXibPersonViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation PXXibPersonViewController

-(instancetype)init{
    self = [super initWithNibName:@"PXXibPersonViewController" bundle:[NSBundle px_subBundleWithBundleName:@"PXXibPersonKit" targetClass:[self class]]];
    
    if (self){
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.image = [UIImage px_imgWithName:@"person" bundle:@"PXXibPersonKit" targetClass:[self class]];
    self.imageView.backgroundColor = [UIColor redColor];
}


@end
