//
//  ViewController.m
//  testBattery
//
//  Created by Calin Chitu on 9/4/14.
//  Copyright (c) 2014 Calin Chitu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *batteryLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIDevice *device = [UIDevice currentDevice];
    device.batteryMonitoringEnabled = YES;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(batteryLevelDidChange:) name:UIDeviceBatteryLevelDidChangeNotification object:device];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(batteryLevelDidChange:) name:UIDeviceBatteryStateDidChangeNotification object:device];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self batteryLevelDidChange:nil];
}

- (void)viewDidUnload
{
    [self setBatteryLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)batteryLevelDidChange:(NSNotification *)notification
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterPercentStyle];
    [numberFormatter setMaximumFractionDigits:1];
    
    UIDeviceBatteryState batteryState = [[UIDevice currentDevice] batteryState];
    if (batteryState == UIDeviceBatteryStateUnplugged) {
        self.batteryLabel.text = [NSString stringWithFormat:@"Battery: %.0f%% [unplugged]",
                                  [[UIDevice currentDevice] batteryLevel]*100];
    } else {
        self.batteryLabel.text = [NSString stringWithFormat:@"Battery: %.0f%% [charging]",
                                  [[UIDevice currentDevice] batteryLevel]*100];
    }
}

@end
