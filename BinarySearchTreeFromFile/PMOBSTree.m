//
//  PMOPMOBSTree.m
//  BinarySearchTreeFromFile
//
//  Created by Peter Molnar on 13/11/2015.
//  Copyright © 2015 Peter Molnar. All rights reserved.
//

#import "PMOBSTree.h"


@implementation PMOBSTree


+(PMOBSTNode *)insertNode:(PMOBSTNode *)root withValue:(id)value
{
    PMOBSTNode *newNode= [[PMOBSTNode alloc] initWithValue:value];
    
    if (!root) {
        root = newNode;
    }
    
    if (value < root.value) {
        root.left = [PMOBSTree insertNode:root.left withValue:value];
    } else if (value > root.value) {
        root.right = [PMOBSTree insertNode:root.right withValue:value];
    }
    
    return root;
    
}

+(int)height:(PMOBSTNode *)root
{
    if (!root) {
        return 0;
    } else {
        int leftHeight = [PMOBSTree height:root.left];
        int rightHeight = [PMOBSTree height:root.right];
        
        if (leftHeight > rightHeight) {
            return leftHeight;
        } else {
            return rightHeight;
        }
        
    }
}

+(id)maxValue:(PMOBSTNode *)root
{
    PMOBSTNode *currentNode = root;
    
    if (!root) return 0;
    
    while (currentNode.right != nil) {
        currentNode = currentNode.right;
    }
    
    return currentNode.value;
}

+(id)minValue:(PMOBSTNode *)root
{
    PMOBSTNode *currentNode = root;
    
    if (!root) return 0;
    
    while (currentNode.left != nil) {
        currentNode = currentNode.left;
    }
    
    return currentNode.value;
}


+(void)preOrder:(PMOBSTNode *)root
{
    if (!root) return;
    
    NSLog(@"%@",root.value);
    [PMOBSTree preOrder:root.left];
    [PMOBSTree preOrder:root.right];
}

+(int)treeSize:(PMOBSTNode *)root
{
    int counter = 1;
    
    if (!root) {
        return 0;
    } else {
        counter += [PMOBSTree treeSize:root.left];
        counter += [PMOBSTree treeSize:root.right];
        return counter;
    }
    
}

+(int)diameter:(PMOBSTNode *)root
{
    if (root==nil) {
        return 0;
    }
    
    int leftHeight = [PMOBSTree height:root.left];
    int rightHeight = [PMOBSTree height:root.right];
    
    int leftDiameter = [PMOBSTree diameter:root.left];
    int rightDiamater = [PMOBSTree diameter:root.right];
    return MAX(leftHeight + rightHeight + 1, MAX(leftDiameter, rightDiamater));
    
}


@end
