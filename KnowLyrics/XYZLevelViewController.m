//
//  XYZLevelViewController.m
//  KnowLyrics
//
//  Created by David Tien on 12/5/13.
//  Copyright (c) 2013 David Tien. All rights reserved.
//

#import "XYZLevelViewController.h"
#import "XYZLevel.h"
#import "XYZMainMenuViewController.h"

@interface XYZLevelViewController ()

@end

@implementation XYZLevelViewController
@synthesize lyricsView;
@synthesize answerField;
@synthesize correctDisplayLabel;
@synthesize checkButton;
@synthesize wrongImageView;

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
	self.levels = [[NSMutableArray alloc] init];
    self.completion = [[NSMutableArray alloc] init];
    [self loadData];
    self.wrongImageView.hidden = YES;
    self.curLevelInt = [self.curLevelString intValue];
    if ([[self.levels objectAtIndex:(self.curLevelInt-1)] completed] == YES)
    {
        self.checkButton.hidden = YES;
        self.wrongImageView.hidden = YES;
        self.answerField.enabled = NO;
        self.correctDisplayLabel.text = @"Correct!";
        self.correctDisplayLabel.font = [UIFont systemFontOfSize:30];
        self.correctDisplayLabel.textColor = [UIColor whiteColor];
        self.correctDisplayLabel.backgroundColor = [UIColor colorWithRed:0.451 green:1 blue:0.412 alpha:1];
    }
    else
    {
        self.correctAnswer = [[self.levels objectAtIndex:(self.curLevelInt-1)] answer];
        self.lyricsView.text = [[self.levels objectAtIndex:(self.curLevelInt-1)] lyrics];
        self.lyricsView.font = [UIFont systemFontOfSize:20];
        self.lyricsView.textAlignment = NSTextAlignmentCenter;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadData {
    if ([self.completion count] == 0)
    {
        for (int i = 1; i <= 30; i++)
        {
            [self.completion addObject:@NO];
        }

    }
    XYZLevel *level1 = [[XYZLevel alloc] init];
    level1.lyrics = @"Staring at the bottom of your glass\nHoping one day you'll make a dream last\nBut dreams come slow and they go so fast\nYou see her when you close your eyes\nMaybe one day you'll understand why\nEverything you touch surely dies";
    level1.answer = @"Passenger";
    level1.num = 1;
    [self.levels addObject:level1];
    
    XYZLevel *level2 = [[XYZLevel alloc] init];
    level2.lyrics = @"\n\nAnd we danced all night to\nThe best song ever\nWe knew every line\nNow I can't remember\nHow it goes but I know\nThat I won't forget her";
    level2.answer = @"One Direction";
    level2.num = 2;
    [self.levels addObject:level2];
    
    XYZLevel *level3 = [[XYZLevel alloc] init];
    level3.lyrics = @"\n\nWe clawed, we chained our hearts in vain\nWe jumped never asking why\nWe kissed, I fell under your spell.\nA love no one could deny ";
    level3.answer = @"Miley Cyrus";
    level3.num = 3;
    [self.levels addObject:level3];
    
    XYZLevel *level4 = [[XYZLevel alloc] init];
    level4.lyrics = @"\n\nAnd as I arrived I thought I saw you leaving,\nCarrying your shoes,\nDecided that once again I was just dreaming,\nOf bumping into you. ";
    level4.answer = @"Artic Monkeys";
    level4.num = 4;
    [self.levels addObject:level4];
    
    XYZLevel *level5 = [[XYZLevel alloc] init];
    level5.lyrics = @"I used to bite my tongue and hold my breath\nScared to rock the boat and make a mess\nSo I sit quietly, agreed politely\nI guess that I forgot I had a choice\nI let you push me past the breaking point\nI stood for nothing, so I fell for everything";
    level5.answer = @"Katy Perry";
    level5.num = 5;
    [self.levels addObject:level5];
    
    XYZLevel *level6 = [[XYZLevel alloc] init];
    level6.lyrics = @"The flags are flying across the Plains\nI got a secret picking in my brain\nI wanna see you, see you\nYes, the sign is on my face\nI don’t know my home\nI don’t know my place\nI just wanna be there, be there";
    level6.answer = @"Kings of Leon";
    level6.num = 6;
    [self.levels addObject:level6];
    
    XYZLevel *level7 = [[XYZLevel alloc] init];
    level7.lyrics = @"\n\nWhen I was young they told me, they said\nMake your bed you lie in that bed\nA king can only reign til it's dead\nHere comes that day, it's off with his head";
    level7.answer = @"Linkin Park";
    level7.num = 7;
    [self.levels addObject:level7];
    
    XYZLevel *level8 = [[XYZLevel alloc] init];
    level8.lyrics = @"You’re an angel dressed in armor\nYou’re the fair in every fight\nYou’re my life and my safe harbor\nWhere the sun sets every night\nAnd if my love is blind\nI don’t want to see the light.";
    level8.answer = @"Michael Buble";
    level8.num = 8;
    [self.levels addObject:level8];
    
    XYZLevel *level9 = [[XYZLevel alloc] init];
    level9.lyrics = @"What a sight, what a sight, when the light came on\nProved me right, proved me right, when you proved them wrong\nAnd in this perfect weather\nIt's like we don't remember\nThe rain we thought would last forever and ever";
    level9.answer = @"Taylor Swift";
    level9.num = 9;
    [self.levels addObject:level9];
    
    XYZLevel *level10 = [[XYZLevel alloc] init];
    level10.lyrics = @"\n\nMy computer thinks I'm gay\nI threw that piece of junk\naway on the champs-Elysees\nas I was walking home.";
    level10.answer = @"Placebo";
    level10.num = 10;
    [self.levels addObject:level10];
    
    XYZLevel *level11 = [[XYZLevel alloc] init];
    level11.lyrics = @"\n\nYou think I’m biased\nToo much I never get other\nYou hit it right on the head\nOnly been missing my lover";
    level11.answer = @"Justin Bieber";
    level11.num = 11;
    [self.levels addObject:level11];
    
    XYZLevel *level12 = [[XYZLevel alloc] init];
    level12.lyrics = @"I got my eyes on you, you're everything that I see\nI want your hot love and emotion endlessly\nI can't get over you, you left your mark on me\nI want your hot love and emotion endlessly";
    level12.answer = @"Drake";
    level12.num = 12;
    [self.levels addObject:level12];
    
    XYZLevel *level13 = [[XYZLevel alloc] init];
    level13.lyrics = @"\n\nTreasure, that is what you are\nHoney you're my golden star\nI know you can make my wish come true\nIf you let me treasure you\nIf you let me treasure you";
    level13.answer = @"Bruno Mars";
    level13.num = 13;
    [self.levels addObject:level13];
    
    XYZLevel *level14 = [[XYZLevel alloc] init];
    level14.lyrics = @"Theres no way to say this songs about someone else\nEvery time you're not in my arms\nI start to lose myself\nSomeone please pass me my shades\nDon't let them see me down\nYou have taken over my days\nSo tonight i'm going out";
    level14.answer = @"Cody Simpson";
    level14.num = 14;
    [self.levels addObject:level14];
    
    XYZLevel *level15 = [[XYZLevel alloc] init];
    level15.lyrics = @"Our women get hot, and our leather gets stained\nWhen we saddle up and ride 'em in the pouring rain\nWe're the junkyard dogs, we're the alley cats\nKeep the wind at our front, and the hell at our back";
    level15.answer = @"Eric Church";
    level15.num = 15;
    [self.levels addObject:level15];
    
    XYZLevel *level16 = [[XYZLevel alloc] init];
    level16.lyrics = @"Recount the night that I first\nMet your mother\nAnd on the drive back to my house\nI told you that, I told you that I loved ya.\nYou felt the weight of the world\nFall off your shoulder\nAnd to your favorite song\nWe sang along to the start of forever";
    level16.answer = @"Paramore";
    level16.num = 16;
    [self.levels addObject:level16];
    
    XYZLevel *level17 = [[XYZLevel alloc] init];
    level17.lyrics = @"\n\nOut with the reason\nIn with the season\nTaking down names\nIn my book of jealousy\nJealousy";
    level17.answer = @"Imagine Dragons";
    level17.num = 17;
    [self.levels addObject:level17];
    
    XYZLevel *level18 = [[XYZLevel alloc] init];
    level18.lyrics = @"It cuts right on my eye, yeah it hurt, won’t lie\nStill can’t see, think I saw you with another guy\nCan’t fight, knocked down, then I got over you\nCan’t fight no more, you knock me out\nWhat am I supposed to do?";
    level18.answer = @"Justin Timberlake";
    level18.num = 18;
    [self.levels addObject:level18];
    
    XYZLevel *level19 = [[XYZLevel alloc] init];
    level19.lyrics = @"I’m feeling your thunder\nThe storm’s getting closer\nThis rain is like fire\nAnd my-my world’s going under\nAnd I can’t remember\nThe reason that you got off the line";
    level19.answer = @"Austin Mahone";
    level19.num = 19;
    [self.levels addObject:level19];

    XYZLevel *level20 = [[XYZLevel alloc] init];
    level20.lyrics = @"You got me wide open, wide open now I'm yours\nYou found me heartbroken, heartbroken on the floor...\nBecame my salvation, salvation through the war (yeah)\nYou got me wide open, wide open now I'm sure...";
    level20.answer = @"Backstreet Boys";
    level20.num = 20;
    [self.levels addObject:level20];
    
    XYZLevel *level21 = [[XYZLevel alloc] init];
    level21.lyrics = @"‘Till you were eating off my spoon\nAnd coming over\nAnd we would talk all afternoon\nTonight we’ll just get drunk\nDisturb the peace\nBind your hands all over me";
    level21.answer = @"Jason DeRulo";
    level21.num = 21;
    [self.levels addObject:level21];
    
    XYZLevel *level22 = [[XYZLevel alloc] init];
    level22.lyrics = @"Help me, I am freaking\nAnd my heart is barely beating\nAnd the demons they are creeping around.\nTake me, I am sinking\nAnd my lungs are barely breathing\nAs the angels put me into the ground.";
    level22.answer = @"Korn";
    level22.num = 22;
    [self.levels addObject:level22];
    
    XYZLevel *level23 = [[XYZLevel alloc] init];
    level23.lyrics = @"We’re gonna blow up because we’ve got nothing to lose,\nWe’re gonna rise up above when we break all the rules,\nWe’re gonna re-write the book ’cause it’s long overdue,\nTear up the script, this is it ’cause it’s all up to you ";
    level23.answer = @"Owl City";
    level23.num = 23;
    [self.levels addObject:level23];
    
    XYZLevel *level24 = [[XYZLevel alloc] init];
    level24.lyrics = @"All my life\nI was never there;\nJust a ghost\nRunning scared.\nHere, our dreams aren't made - they're won.";
    level24.answer = @"30 Seconds To Mars";
    level24.num = 24;
    [self.levels addObject:level24];
    
    XYZLevel *level25 = [[XYZLevel alloc] init];
    level25.lyrics = @"\n\nWe laid a blanket on the rooftop,\nthat time I knew I wouldn't make him stop,\nthe nights were cold but we kept them hot,\nseventeen.";
    level25.answer = @"Avril Lavigne";
    level25.num = 25;
    [self.levels addObject:level25];
    
    XYZLevel *level26 = [[XYZLevel alloc] init];
    level26.lyrics = @"\n\nFold a scarf, Moroccan red\nAnd tie your hair behind your head\nStrap into some heels that hurt\nYou should’ve kept my undershirt";
    level26.answer = @"John Mayer";
    level26.num = 26;
    [self.levels addObject:level26];
    
    XYZLevel *level27 = [[XYZLevel alloc] init];
    level27.lyrics = @"Don’t say I’ll see you later alligator, so cute\nWhen you know it’s not true\nI know you’re seeing her\nBut you can still see me, too\nIf you wanted to, baby";
    level27.answer = @"Lana Del Rey";
    level27.num = 27;
    [self.levels addObject:level27];
    
    XYZLevel *level28 = [[XYZLevel alloc] init];
    level28.lyrics = @"The lone neon lights\nAnd the heat of the ocean\nAnd the fire that had started to spark\nI miss it all from the love to the lightning\nAnd the lack of it snaps me in two";
    level28.answer = @"Ed Sheeran";
    level28.num = 28;
    [self.levels addObject:level28];
    
    XYZLevel *level29 = [[XYZLevel alloc] init];
    level29.lyrics = @"Nineteen your eyes are glowing into my beating heart\nOh it seems like it is fine as my hand is moving up your arm\nAnd you never really know where it goes up until it starts\nI’ve got my eye on you, whatcha gonna do? ";
    level29.answer = @"Blink 182";
    level29.num = 29;
    [self.levels addObject:level29];
    
    XYZLevel *level30 = [[XYZLevel alloc] init];
    level30.lyrics = @"Najeneun ddasarowun in-ganjeogin yeoja\nKeopi hanjaneui yeoyureul aneun pumgyeok ittneun yeoja\nBami omyeon shimjangi ddeugeowojineun yeoja\nGeureon banjeon ittneun yeoja";
    level30.answer = @"PSY";
    level30.num = 30;
    [self.levels addObject:level30];

}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)checkAnswer:(id)sender {
    NSString *userAnswer = answerField.text;
    if ([userAnswer isEqualToString:self.correctAnswer] == YES)
    {
        [[self.levels objectAtIndex:(self.curLevelInt-1)] setCompleted:YES];
        [self.completion setObject:@YES atIndexedSubscript:(self.curLevelInt-1)];
        self.checkButton.hidden = YES;
        self.wrongImageView.hidden = YES;
        self.answerField.enabled = NO;
        self.correctDisplayLabel.text = @"Correct!";
        self.correctDisplayLabel.font = [UIFont systemFontOfSize:30];
        self.correctDisplayLabel.textColor = [UIColor whiteColor];
        self.correctDisplayLabel.backgroundColor = [UIColor colorWithRed:0.451 green:1 blue:0.412 alpha:1];
    }
    else
    {
        self.wrongImageView.hidden = NO;
        [self.wrongImageView setImage:[UIImage imageNamed:@"43px-Red_x.png"]];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    XYZMainMenuViewController *dest = segue.destinationViewController;
    dest.completedLevels = self.completion;
}

@end
