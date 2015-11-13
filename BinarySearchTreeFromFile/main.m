//
//  main.m
//  BinarySearchTreeFromFile
//
//  Created by Peter Molnar on 13/11/2015.
//  Copyright © 2015 Peter Molnar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PMOBSTree.h"

#pragma mark - Main function
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PMOBSTNode *root;
        
        NSFileHandle *inputFileHandler = [NSFileHandle fileHandleWithStandardInput];
        NSMutableString *inputAsString = [NSMutableString string];
        
        do {
            NSData *inputData = [inputFileHandler availableData];
            if ([inputData length]==0) {
                // End of the file
                break;
            }
            // Convert to NSString
            NSMutableString *tmpString = [[NSMutableString alloc]
                                          initWithData:inputData
                                          encoding:NSUTF8StringEncoding];
            // Slice up by line ends
            NSArray *stringAsList = [tmpString componentsSeparatedByString:@"\n"];
            for (NSString *currString in stringAsList) {
                // Filter out the empty lines
                if ([currString length] > 0) {
                    root = [PMOBSTree insertNode:root withValue:[NSNumber numberWithInt:[currString intValue]]];
                }
            }
        } while ([inputAsString rangeOfString:@"\n"].location == NSNotFound);
        
        printf("%d\n",[PMOBSTree maxValue:root]);
        
    }
    return 0;
}

