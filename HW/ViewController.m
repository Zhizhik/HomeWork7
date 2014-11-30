
//  ViewController.m
//  HW
//
//  Created by Zhizhik on 30.11.14.
//  Copyright (c) 2014 Zhizhik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScroll;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *myLabelForText;

@property (weak, nonatomic) IBOutlet UIView *myButoonForText;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UILabel *myLabelWithChangedFromButton;

@property (weak, nonatomic) IBOutlet UIView *mySlider;
@property (weak, nonatomic) IBOutlet UILabel *myLabelForSlider;

-(IBAction)changeSlider:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UIButton *myButtonForShowIndecator;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *myIndicator;
@property (weak, nonatomic) IBOutlet UIView *myStepper;
@property (weak, nonatomic) IBOutlet UITextField *myTextForStepper;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_mySwitch addTarget:self action:@selector(onRoff) forControlEvents:UIControlEventValueChanged];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)segmentcontroller {
    if(_mySegmentedControll.selectedSegmentIndex == 0){
        _myLabel.text = @"1";
    } else {
        _myLabel.text = @"2";
    }
    
}


-(IBAction)showText{
    _myLabelForText.text = _myTextField.text;
}

- (IBAction)handleButtonClick{
  _myLabelWithChangedFromButton.text = @"You changed this button";
}


-(IBAction)changeSlider:(UISlider *)sender {
    float sliderValue = [sender value];
    self.myLabelForSlider.text = [NSString stringWithFormat:@"%f", sliderValue];
}


-(void) onRoff {
    if (_mySwitch.on) {
        UIAlertView* myAlert = [[UIAlertView alloc] initWithTitle:@"Your desire" message:@"You wanted this, baby" delegate:nil cancelButtonTitle:@"Thnx" otherButtonTitles:nil, nil];
        [myAlert show];
        
    }
}

-(IBAction)showIndecator{
    [_myIndicator startAnimating];
    
}

-(IBAction)stepperValue:(UIStepper *)sender {
   // NSLog(@"The stepper has %f value", sender.value);
    _myTextForStepper.text = [NSString stringWithFormat:@"%d", (int)sender.value];
}


@end
