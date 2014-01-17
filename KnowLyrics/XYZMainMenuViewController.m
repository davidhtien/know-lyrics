//
//  XYZMainMenuViewController.m
//  KnowLyrics
//
//  Created by David Tien on 12/5/13.
//  Copyright (c) 2013 David Tien. All rights reserved.
//

#import "XYZMainMenuViewController.h"
#import "XYZSwitchToLyricsSegue.h"
#import "XYZLevelViewController.h"

@interface XYZMainMenuViewController ()

@end

@implementation XYZMainMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([self.completedLevels count] == 0)
    {
        for (int i = 1; i <= 30; i++)
        {
            [self.completedLevels addObject:@NO];
        }
    }
    else
    {
        for (int i = 0; i < 30; i++)
        {
            if ([[self.completedLevels objectAtIndex:i] boolValue])
            {
                [[self.buttons objectAtIndex:i] setImage:[UIImage imageNamed:@"solid rounded blue square.jpg"] forState:UIControlStateNormal];
                [[self.buttons objectAtIndex:i] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            }
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    XYZLevelViewController *dest = segue.destinationViewController;
    dest.curLevelString = [sender currentTitle];
}

- (IBAction)switchToLyrics:(id)sender {
    
    [self performSegueWithIdentifier:@"switchToLyrics" sender:sender];
}

- (void)buttonsToArray
{
    self.buttons = [[NSMutableArray alloc] init];
    [self.buttons addObject:self.button1];
    [self.buttons addObject:self.button2];
    [self.buttons addObject:self.button3];
    [self.buttons addObject:self.button4];
    [self.buttons addObject:self.button5];
    [self.buttons addObject:self.button6];
    [self.buttons addObject:self.button7];
    [self.buttons addObject:self.button8];
    [self.buttons addObject:self.button9];
    [self.buttons addObject:self.button10];
    [self.buttons addObject:self.button11];
    [self.buttons addObject:self.button12];
    [self.buttons addObject:self.button13];
    [self.buttons addObject:self.button14];
    [self.buttons addObject:self.button15];
    [self.buttons addObject:self.button16];
    [self.buttons addObject:self.button17];
    [self.buttons addObject:self.button18];
    [self.buttons addObject:self.button19];
    [self.buttons addObject:self.button20];
    [self.buttons addObject:self.button21];
    [self.buttons addObject:self.button22];
    [self.buttons addObject:self.button23];
    [self.buttons addObject:self.button24];
    [self.buttons addObject:self.button25];
    [self.buttons addObject:self.button26];
    [self.buttons addObject:self.button27];
    [self.buttons addObject:self.button28];
    [self.buttons addObject:self.button29];
    [self.buttons addObject:self.button30];

}

@end
