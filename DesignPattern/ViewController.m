//
//  ViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/2.
//

#import "ViewController.h"
#import "DesignNameCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *datas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _datas = @[
        @{@"category": @"对象创建型",
          @"demo": @[@"FactoryController",
                     @"AbstractFactoryDemo",
                     @"Prototype_bussiness",
                     @"AbstractDemo",
                     @"SigntonDemo"]
          
        },
        @{@"category": @"接口适配",
          @"demo": @[@"AdapterViewController",
                     @"BridgeViewController",
                     @"FacadeViewController"]
          
        },
        @{@"category": @"抽象集合",
          @"demo": @[@"CompositeViewController",
                     @"IteratorViewController"]
          
        },
        @{@"category": @"对象去耦",
          @"demo": @[@"ObserverViewController",
                     @"MediatorDemoViewController"]
          
        },
        
        @{@"category": @"对象状态",
          @"demo": @[@""]
          
        },
        @{@"category": @"算法封装",
          @"demo": @[@""]
          
        },
        @{@"category": @"行为扩展",
          @"demo": @[@""]
          
        },
        @{@"category": @"性能与对象访问",
          @"demo": @[@""]
          
        }
    ];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.datas.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self getDemoArrayWithIndex:[NSIndexPath indexPathWithIndex:section]] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DesignNameCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DesignNameCell"];
    if (!cell) {
        cell =  [[NSBundle mainBundle]loadNibNamed:@"DesignNameCell" owner:self options:nil].firstObject;
    }
    cell.textLabel.text = [self getDemoArrayWithIndex:indexPath][indexPath.row];
    return cell;
}

#pragma mark - Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Class class = NSClassFromString([self getDemoArrayWithIndex:indexPath][indexPath.row]);
    id obj = [class new];
    if ([obj isKindOfClass:[UIViewController class]]) {
        [self.navigationController pushViewController:obj animated:true];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.datas[section][@"category"];
}

#pragma mark - Private

- (NSArray *)getDemoArrayWithIndex:(NSIndexPath *)indexPath {
    if (!indexPath) {
        return nil;
    }
    
    if (self.datas.count <= indexPath.section) {
        return nil;
    }
    return self.datas[indexPath.section][@"demo"];
}

@end
