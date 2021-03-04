//
//  BridgeViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/3.
//

#import "BridgeViewController.h"
#import "GBASystem.h"
#import "GBAImplementor.h"
#import "PSPSystem.h"
#import "PSPImplementtor.h"

@interface BridgeViewController ()

@end

@implementation BridgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AbstractSystem *gbaSystem = [[GBASystem alloc] init];
    gbaSystem.implementor = [[GBAImplementor alloc] init];
    [gbaSystem loadSystem];
    [gbaSystem command_up];
    
    
    //psp
    PSPSystem *pspSystem = [[PSPSystem alloc] init];
    pspSystem.implementor = [[PSPImplementtor alloc] init];
    [pspSystem loadSystem];
    [pspSystem command_O];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
