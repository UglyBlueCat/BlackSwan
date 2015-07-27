//
//  ViewController.m
//  BlackSwan
//
//  Created by Robin Spinks on 26/07/2015.
//  Copyright (c) 2015 Robin Spinks. All rights reserved.
//

#import "ViewController.h"
#import "DataHandler.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton*    sixButton;
@property (nonatomic, weak) IBOutlet UILabel*     sixLabel;
@property (nonatomic, weak) IBOutlet UIButton*    nButton;
@property (nonatomic, weak) IBOutlet UILabel*     nLabel;
@property (nonatomic, weak) IBOutlet UITextField* textField;

@property DataHandler* dataHandler;

@end

@implementation ViewController

#pragma mark view controller methods

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataHandler = [DataHandler sharedInstance];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark IBActions

- (IBAction)buttonPressed:(id)sender {
    NSString* sides;
    UILabel* label = self.sixLabel;
    if (sender == self.nButton) {
        sides = self.textField.text;
        label = self.nLabel;
    }
    [self.dataHandler rollDieWithSides:sides success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self updateLabel:label
                     with:[[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void)updateLabel:(UILabel*)label with:(NSString*)value {
    label.text = [NSString stringWithFormat:@"Result: %@", value];
}

@end
