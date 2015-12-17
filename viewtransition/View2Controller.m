//
//  View2Controller.m
//  viewtransition
//
//  Created by xialeistudio on 15/12/17.
//  Copyright © 2015年 Group Friend Information. All rights reserved.
//

#import "View2Controller.h"

@interface View2Controller ()
- (IBAction)cancelClicked:(id)sender;

@property(weak, nonatomic) IBOutlet UIView *menuView;

@end

@implementation View2Controller {
    UITapGestureRecognizer *_tap;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tap = [[UITapGestureRecognizer alloc] init];
    [_tap addTarget:self action:@selector(closeView)];
    [self.view addGestureRecognizer:_tap];
}

- (void)closeView {
    _menuView.frame = CGRectMake(_menuView.frame.origin.x, self.view.frame.size.height - _menuView.frame.size.height, _menuView.frame.size.width, _menuView.frame.size.height);
    [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         _menuView.frame = CGRectMake(_menuView.frame.origin.x, self.view.frame.size.height, _menuView.frame.size.width, _menuView.frame.size.height);
                     }
                     completion:^(BOOL isFinished) {
                         if (isFinished) {
                             [self dismissViewControllerAnimated:NO completion:nil];
                         }
                     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    _menuView.frame = CGRectMake(_menuView.frame.origin.x, self.view.frame.size.height, _menuView.frame.size.width, _menuView.frame.size.height);
    [UIView animateWithDuration:.3 animations:^{
        _menuView.frame = CGRectMake(_menuView.frame.origin.x, self.view.frame.size.height - _menuView.frame.size.height, _menuView.frame.size.width, _menuView.frame.size.height);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelClicked:(id)sender {
    [self closeView];
}
@end
