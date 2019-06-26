//
//  ViewController.m
//  tipster
//
//  Created by jpearl on 6/25/19.
//  Copyright © 2019 jpearl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPercent;

@end

@implementation ViewController

//
//NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//double doubleValue = [defaults doubleForKey:@"default_tip_percentage"];

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Tip Calculator";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double doubleValue = [defaults doubleForKey:@"default_tip_percentage"];
    self.tipPercent.selectedSegmentIndex = (int)doubleValue;
    NSLog(@"selected int: %i", self.tipPercent.selectedSegmentIndex);
    // Do any additional setup after loading the view.
}
- (IBAction)onTap:(id)sender {
    [self.view endEditing:(YES)];
    // dismisses keyboard fun call
}

- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    NSArray *percentSelect = @[@(0.15), @(0.2), @(0.22)];
    double percent = [percentSelect[self.tipPercent.selectedSegmentIndex] doubleValue];
    double tip = bill * percent;
    double total = tip + bill;
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
