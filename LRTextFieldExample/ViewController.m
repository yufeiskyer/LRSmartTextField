//
//  ViewController.m
//  LRTextField
//
//  Created by Chao on 7/26/15.
//  Copyright (c) 2015 Chao. All rights reserved.
//

#import "ViewController.h"
#import "LRTextField.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.test.format = @"(###)###-####";
    //self.test.format = @"#######";
    //self.test.delegate = self;
    //self.test.onlyNumber = YES;
    
    LRTextField *textField = [[LRTextField alloc] initWithFrame:CGRectMake(50, 50, 100, 30)];
    textField.placeholder = @"123456";
    textField.format = @"(###)-##";
    textField.enableAnimation = NO;
    textField.borderStyle = UITextBorderStyleNone;
    [textField setValidationBlock:^NSDictionary *(LRTextField *textField, NSString *text) {
        return @{ VALIDATION_SHOW_YES : @"good" };
    }];
    textField.delegate = self;
    textField.text = @"abcdefg";
    [self.view addSubview:textField];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    return [textField resignFirstResponder];
//}
//
//
- (void)textFieldDidEndEditing:(LRTextField *)textField
{
    NSLog(@"%@", textField.rawString);
  
}


@end
