//
//  PMOBSTNode.m
//  BinarySearchTreeFromFile
//
//  Created by Peter Molnar on 13/11/2015.
//  Copyright © 2015 Peter Molnar. All rights reserved.
//

#import "PMOBSTNode.h"

@implementation PMOBSTNode

-(instancetype)init
{
    self  = [super init];
    
    return self;
}


-(instancetype)initWithValue:(id)value;
{
    self = [super init];
    
    if (self) {
        [self setValue:value];
        [self setLeft:nil];
        [self setRight:nil];
    }
    
    return self;
}


@end
