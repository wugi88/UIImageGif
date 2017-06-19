//
//  ViewController.m
//  UIImageGif
//
//  Created by daewook kim on 2016. 9. 7..
//  Copyright © 2016년 daewook kim. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Gif.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;
@property (weak, nonatomic) IBOutlet UIImageView *imageView5;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Usage 1 : gifWidthData
    NSData *data = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"f1" withExtension:@"gif"]];
    
    self.imageView1.image = [UIImage gifWithData:data];
    
    // Usage 2 : gifWidthURL
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"f2" withExtension:@"gif"];
    self.imageView2.image = [UIImage gifWithURL:url];
    
    self.imageView3.image = [UIImage gifWithURL:[[NSBundle mainBundle] URLForResource:@"f3" withExtension:@"gif"]];
    
    self.imageView4.image = [UIImage gifWithURL:[[NSBundle mainBundle] URLForResource:@"f4" withExtension:@"gif"]];

    self.imageView5.image = [UIImage gifWithURL:[[NSBundle mainBundle] URLForResource:@"n1" withExtension:@"gif"]];

}

@end
