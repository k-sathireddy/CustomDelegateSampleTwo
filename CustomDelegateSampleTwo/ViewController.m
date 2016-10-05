//
//  ViewController.m
//  CustomDelegateSampleTwo


#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<SecondViewControllerPotocol>
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (strong, nonatomic) NSArray *primaryColorsArray;
@property (strong, nonatomic) NSArray *secondaryColorsArray;
@property (nonatomic, assign) long presentButtonTag;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.primaryColorsArray = @[@"Red",@"Green",@"Blue"];
    self.secondaryColorsArray = @[@"Orange",@"Brown",@"Violet",@"Yellow",@"Pink"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)firstButtonClicked:(UIButton *)sender {
    self.presentButtonTag = sender.tag;
    SecondViewController *second = (SecondViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    second.delegate = self;
    second.colorsArray = self.primaryColorsArray;
    [self.navigationController presentViewController:second animated:YES completion:nil];
}

- (IBAction)secondButtonClicked:(UIButton *)sender {
    self.presentButtonTag = sender.tag;
    SecondViewController *second = (SecondViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    second.delegate = self;
    second.colorsArray = self.secondaryColorsArray;
    [self.navigationController presentViewController:second animated:YES completion:nil];
}

- (void)changeButtonTitleWithText:(NSString *)title{
    if(self.presentButtonTag == 0)
    {
        [self.firstButton setTitle:title forState:UIControlStateNormal];
    }
    else if(self.presentButtonTag == 1)
    {
        [self.secondButton setTitle:title forState:UIControlStateNormal];
    }
}


@end
