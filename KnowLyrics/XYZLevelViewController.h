//
//  XYZLevelViewController.h
//  KnowLyrics
//
//  Created by David Tien on 12/5/13.
//  Copyright (c) 2013 David Tien. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZLevelViewController : UIViewController

@property NSMutableArray *levels;
@property NSMutableArray *completion;
@property NSString *curLevelString;
@property int curLevelInt;
@property (nonatomic, retain) IBOutlet UITextView *lyricsView;
@property (nonatomic, retain) IBOutlet UITextField *answerField;
@property (nonatomic, retain) IBOutlet UILabel *correctDisplayLabel;
@property (nonatomic, retain) IBOutlet UIButton *checkButton;
@property (weak, nonatomic) IBOutlet UIImageView *wrongImageView;
@property NSString *correctAnswer;

@end
