//
//  ViewController.m
//  viewtransition
//
//  Created by xialeistudio on 15/12/17.
//  Copyright © 2015年 Group Friend Information. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, t
}

- (UIViewController *)getViewControllerFromStoryboard:(NSString *)name {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:name];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showMenu"]) {
        UIViewController *viewController = segue.destinationViewController;
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
            viewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        } else {
            self.modalPresentationStyle = UIModalPresentationCurrentContext;

        }
    }
}
@end
