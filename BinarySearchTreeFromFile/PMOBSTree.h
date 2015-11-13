//
//  PMOBSTree.h
//  BinarySearchTreeFromFile
//
//  Created by Peter Molnar on 13/11/2015.
//  Copyright © 2015 Peter Molnar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PMOBSTNode.h"

@interface PMOBSTree : NSObject
+(PMOBSTNode *)insertNode:(PMOBSTNode *)root withValue:(id)value;
+(id)maxValue:(PMOBSTNode *)root;
+(id)minValue:(PMOBSTNode *)root;
+(int)height:(PMOBSTNode *)root;
+(void)preOrder:(PMOBSTNode *)root;
+(int)treeSize:(PMOBSTNode *)root;
+(int)diameter:(PMOBSTNode *)root;
@end
