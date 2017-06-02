//
//  ViewController.h
//  IrisSutterAnimationDemo
//
//  Created by WebsoftProfession on 7/13/16.
//   WebsoftProfession. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    __weak IBOutlet UIView *containerView;
    __weak IBOutlet UIImageView *imgView;
    __weak IBOutlet UIView *parentView;
    
}
- (IBAction)btnPlayClicked:(id)sender;

@end

