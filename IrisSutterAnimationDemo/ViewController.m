//
//  ViewController.m
//  IrisSutterAnimationDemo
//
//  Created by WebsoftProfession on 7/13/16.
//   WebsoftProfession. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGRect defaultContainerViewFrame;
    CGRect defaultImageViewFrame;
    
    CGPoint centerPoint;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    parentView.layer.cornerRadius=parentView.frame.size.width/2;
    parentView.layer.borderColor=[UIColor blackColor].CGColor;
    parentView.layer.borderWidth=2.0;
    CALayer *shutterLayer=[CALayer layer];
    shutterLayer.frame=parentView.bounds;
    //shutterLayer.contents = (id)[UIImage imageNamed:@"shutter.jpeg"];
    shutterLayer.contents = (id)[UIImage imageNamed:@"shutter.jpeg"].CGImage;
    [parentView.layer insertSublayer:shutterLayer atIndex:0];
    
    containerView.layer.cornerRadius=containerView.frame.size.width/2;
    containerView.layer.borderColor=[UIColor grayColor].CGColor;
    containerView.layer.borderWidth=2.0;
    
    defaultContainerViewFrame=containerView.frame;
    defaultImageViewFrame=imgView.frame;
    
    centerPoint=containerView.center;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPlayClicked:(id)sender {
    imgView.image=[UIImage imageNamed:@"first.jpg"];
    CGRect newContainerViewFrame=CGRectMake(centerPoint.x, centerPoint.y, 0, 0);
    CGRect newImageViewFrame=CGRectMake(imgView.frame.size.width/2, imgView.frame.size.height/2, 0, 0);
    CGAffineTransform transformRoatae=CGAffineTransformMakeRotation(M_PI/2);
    CGAffineTransform transformRoatae1=CGAffineTransformMakeRotation(-M_PI/4);
    [UIView animateWithDuration:1.5 animations:^{
        
        containerView.frame=newContainerViewFrame;
        parentView.transform=transformRoatae;
        containerView.transform=transformRoatae;
        //imgView.frame=newImageViewFrame;
        
    } completion:^(BOOL finished) {
        
        imgView.image=[UIImage imageNamed:@"second.jpg"];
        [UIView animateWithDuration:1.0 animations:^{
            
            containerView.frame=defaultContainerViewFrame;
            parentView.transform=transformRoatae1;
            containerView.transform=transformRoatae1;
        }];
        
    }];
    
    
    
    
    
    
}
@end
