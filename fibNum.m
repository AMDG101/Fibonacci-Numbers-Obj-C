//
//  main.m
//  fibonacci_numbers
//
//  Created by Nicholas Rogers on 5/11/15.
//  AMDG

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray new];
        [arr addObject:[NSNumber numberWithDouble:1]];
        [arr addObject:[NSNumber numberWithDouble:1]];
        
        double x = 0;
        for (int n = 2; n <= 500; n++) {
            x = [[arr objectAtIndex:n-1]doubleValue] + [[arr objectAtIndex:n-2]doubleValue];
            [arr addObject:[NSNumber numberWithDouble:x]];
        }
        int fNum;
        printf("Enter the Fibonacci number you want to find from 1-500: ");
        scanf("%d", &fNum);
        NSLog(@"The Fibonacci number when n = %d is %.0lf", fNum, [[arr objectAtIndex:fNum]doubleValue]);
    }
    return 0;
}
