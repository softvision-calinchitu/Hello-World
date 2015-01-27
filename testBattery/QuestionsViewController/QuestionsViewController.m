//
//  QuestionsViewController.m
//  testBattery
//
//  Created by Mihai Georgescu on 27.01.2015.
//  Copyright (c) 2015 Calin Chitu. All rights reserved.
//

#import "QuestionsViewController.h"

@interface QuestionsViewController ()

@end

@implementation QuestionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)DismissQuestionaire {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
