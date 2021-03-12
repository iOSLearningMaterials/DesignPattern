//
//  IteratorViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import "IteratorViewController.h"
#import "CustomView.h"
#import "Node.h"
#import "LinkListIterator.h"
#import "LinkedList.h"


@interface IteratorViewController ()

@end

@implementation IteratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomView *customview = [[CustomView alloc] initWithFrame:self.view.bounds];
    
    // 获取子组件方法一：
    NSArray *subViews = [customview subviews];
    [subViews enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"遍历子组件");
    }];
    
    // 集合对象创建迭代器
    NSArray *datas = @[@"A", @"B", @"C", @"D"];
    NSEnumerator *iterator = [datas objectEnumerator];
    id arrayObj = nil;
    while (arrayObj = [iterator nextObject]) {
        NSLog(@"集合迭代器 --- %@", arrayObj);
    }
    
    LinkedList *linkedList = [[LinkedList alloc] init];
    [linkedList addItem:@"1"];
    [linkedList addItem:@"2"];
    [linkedList addItem:@"3"];
    [linkedList addItem:@"4"];
    [linkedList addItem:@"5"];
    
    LinkListIterator *linkIterator = [LinkListIterator linkListIterator:linkedList];
    id node1 = nil;
    while (node1 = [linkIterator nextObject]) {
        NSLog(@"customview迭代器---%@", node1);
    }
    
    // 方法二：使用迭代器，让customView支持迭代器
    
    id subView = nil;
    while (subView = [customview nextObject]) {
        NSLog(@"customview迭代器---%@", subView);
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
