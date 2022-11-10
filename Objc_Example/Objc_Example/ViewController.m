//
//  ViewController.m
//  Objc_Example
//
//  Created by David Razmadze on 11/9/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  
  [self fetchIceCream];
}

-(void)fetchIceCream {
  NSLog(@"▲ Fetching Ice Cream");
  // http://localhost:8080/api/icecream
  
  NSString *urlString = @"http://localhost:8080/api/icecream";
  NSURL *url = [NSURL URLWithString:urlString];
  
  [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
      
    NSLog(@"✅ Finished fetching Ice Cream...");
    NSString *dataString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    NSLog(@"Data String: %@", dataString);
    
    
  }] resume];
}

@end
