//
//  ViewController.m
//  Matchismo
//
//  Created by Andrew Codispoti on 2014-12-18.
//  Copyright (c) 2014 Andrew Codispoti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize flips=_flips;
-(void)setFlips:(int)flips{
    self.flipsLabel.text=[NSString stringWithFormat:@"Flips: %d",flips ];
    _flips=flips;
}
-(int)flips{
    return _flips;

}
+(NSString *)randomSuit{

    return @[@"♣️",@"♥️",@"♠️",@"♦️"][arc4random()%4];
}
+(NSString *) randomValue{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"][arc4random()%13];
}
- (IBAction)cardButtonClick:(UIButton *)sender {
    if(![sender.currentTitle length]){
    [sender setBackgroundImage:[UIImage imageNamed:@"front"] forState:UIControlStateNormal];
        [sender setTitle:[NSString stringWithFormat:@"%@ %@",[ViewController randomSuit],[ViewController randomValue] ]forState:UIControlStateNormal];
    }
    else{
        [sender setBackgroundImage:[UIImage imageNamed:@"background"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    self.flips++;
    NSLog(@"%d",self.flips);
}

@end
