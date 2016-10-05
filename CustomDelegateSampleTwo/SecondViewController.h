//
//  SecondViewController.h
//  CustomDelegateSampleTwo

#import <UIKit/UIKit.h>

@protocol SecondViewControllerPotocol <NSObject>

@optional
- (void)changeButtonTitleWithText:(NSString *)title;

@end


@interface SecondViewController : UIViewController

@property (strong, nonatomic) NSArray *colorsArray;
//delegate
@property (nonatomic, assign) id<SecondViewControllerPotocol> delegate;
@end
