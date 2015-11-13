//
//  PMOBSTNode.h
//  BinarySearchTreeFromFile
//
//  Created by Peter Molnar on 13/11/2015.
//  Copyright © 2015 Peter Molnar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PMOBSTNode : NSObject
@property (strong, nonatomic) id value;
@property (strong, nonatomic) PMOBSTNode *left;
@property (strong, nonatomic) PMOBSTNode *right;

-(instancetype)initWithValue:(id)value;
@end
