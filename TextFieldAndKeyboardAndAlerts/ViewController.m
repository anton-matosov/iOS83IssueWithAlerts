//
//  ViewController.m
//  TextFieldAndKeyboardAndAlerts
//
//  Created by Anton Matosov [CTR] on 4/21/15.
//  Copyright (c) 2015 Anton Matosov [CTR]. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *editor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAlert:(id)sender {
    [self.editor resignFirstResponder];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.35 * NSEC_PER_SEC), dispatch_get_main_queue(), ^
    {
        UIAlertView *alert = [[UIAlertView alloc] init];
        alert.title = @"Alert 1";
        [alert addButtonWithTitle:@"OK 1"];
        alert.delegate = self;

        [alert show];
    });
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.35 * NSEC_PER_SEC), dispatch_get_main_queue(), ^
    {
        UIAlertView *alert = [[UIAlertView alloc] init];
        alert.title = @"Alert 2";
        [alert addButtonWithTitle:@"OK 2"];

        [alert show];
    });
}


@end
