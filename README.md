# UIImageGif

A UIImage category that loads animated GIF.

![Demo gif](https://cloud.githubusercontent.com/assets/8635657/18316565/18b470be-7556-11e6-8e8b-f7f50a289f05.gif)

## How to Use

### To use this category
1. Copy `UIImage+Gif.h` and `UIImage+Gif.m` to your project.
2. Make sure `UIImage+Gif.m` to your target's “Compile Sources” build phase.

### The category defines three methods:

```Objective-c
//Make a animated gif from NSData.
+ (UIImage *)gifWithData:(NSData *)data;

// Make a animated gif from NSURL.
+ (UIImage *)gifWithURL:(NSURL *)url;

// Get image count from the gif image data.
+ (int)gifImageCountWithData:(NSData *)data;
```

### Example code
```Objective-c
#import "ViewController.h"
#import "UIImage+Gif.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
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
}
```

## License
This repository is licensed under the MIT license, more under
[LICENSE](LICENSE)