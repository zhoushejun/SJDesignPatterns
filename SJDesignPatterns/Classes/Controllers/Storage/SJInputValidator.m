//
//  SJInputValidator.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJInputValidator.h"

static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";

#pragma mark - SJInputValidator

@implementation SJInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end


#pragma mark - SJNumericInputValidator

@interface SJNumericInputValidator ()

@end

@implementation SJNumericInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$"
                                                                           options:NSRegularExpressionAnchorsMatchLines
                                                                             error:&regError];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, [input.text length])];
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input validation failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only numerical values", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1001 userInfo:userInfo];
        }
        return NO;
    }
    
    return YES;
}

@end
#pragma mark - SJAlphaInputValidator

@interface SJAlphaInputValidator ()

@end

@implementation SJAlphaInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$"
                                                                           options:NSRegularExpressionAnchorsMatchLines
                                                                             error:&regError];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, [input.text length])];
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input validation failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only letters", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1002 userInfo:userInfo];
        }
        return NO;
    }

    return YES;
}

@end