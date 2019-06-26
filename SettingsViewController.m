//
//  SettingsViewController.m
//  tipster
//
//  Created by jpearl on 6/25/19.
//  Copyright © 2019 jpearl. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultPercent;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.


}
- (IBAction)valChange:(id)sender {
    double select = (double) self.defaultPercent.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setDouble:select forKey:@"default_tip_percentage"];
    [defaults synchronize];
    

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
