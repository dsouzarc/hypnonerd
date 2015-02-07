//
//  BNRViewController.m
//  Quiz
//
//  Created by Ryan D'souza on 1/16/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "BNRViewController.h"

@interface BNRViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        self.questions = @[@"From what is cognac made?", @"What is 7 + 7", @"What is the capital of Vermont"];
        self.answers = @[@"Grapes", @"14", @"Montpelier"];
        
        self.tabBarItem.title = @"Quiz";
    }
    
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    
    if(self.currentQuestionIndex == self.questions.count) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    self.answerLabel.text = @"?";
}

- (IBAction)showAnswer:(id)sender
{
    if(self.currentQuestionIndex == self.questions.count) {
        self.currentQuestionIndex = 0;
    }
    self.answerLabel.text = self.answers[self.currentQuestionIndex];
}

@end
