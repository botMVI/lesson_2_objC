//
//  ViewController.m
//  lesson_2_objC
//
//  Created by Michael Iliouchkin on 25.03.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *vocab = @"abcdefghijkmnlopqrstuvwxyz";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", alphabet(@"g"));
    
    NSLog(@"%f", [self calculateAdd:22 plus:5]);
    NSLog(@"%f", [self calculateSub:20 minus:10]);
    NSLog(@"%f", [self calculateMul:2 multiply:4]);
    NSLog(@"%f", [self calculateDiv:11 divide:0]);
}

NSString* alphabet(NSString *method) { 
    
    if ([vocab containsString: method]) {
        return @"Буква входит в англ алфавит";
    }
    else {
        NSLog(@"Функция не знает переданную букву");
        return 0;
    }
}

// MARK: Ex 2

- (CGFloat)calculateAdd:(NSInteger)value plus:(NSInteger)secondValue {
    return value + secondValue;
}

- (CGFloat)calculateSub:(NSInteger)value minus:(NSInteger)secondValue {
    return value - secondValue;
}

- (CGFloat)calculateMul:(NSInteger)value multiply:(NSInteger)secondValue {
    return value * secondValue;
}

- (CGFloat)calculateDiv:(NSInteger)value divide:(NSInteger)secondValue {
    if(value == 0 || secondValue == 0) {
        NSLog(@"На ноль делить нельзя");
        return 0.0; // как обработать ошибку / прекратить выполнение функции?
    }
    return value / secondValue;
}

@end
