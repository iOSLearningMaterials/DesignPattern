//
//  TemplateDemoViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/23.
//

#import "TemplateDemoViewController.h"
#import "FootballGame.h"
#import "Chess.h"

@interface TemplateDemoViewController ()

@end

@implementation TemplateDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FootballGame *game = [[FootballGame alloc] init];
    [game initGame];
    [game startPlay];
    [game pause];
    [game save];
    [game exitGame];
    
    Chess *chessGame = [[Chess alloc] init];
    [chessGame initGame];
    [chessGame startPlay];
    [chessGame pause];
    [chessGame save];
    [chessGame exitGame];
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
