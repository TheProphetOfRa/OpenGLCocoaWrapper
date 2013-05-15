//
//  TriangleO.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Object2D.h"

@class Vertex;

@interface Triangle : Object2D 

-(id) initWithBottomLeftVertex:(Vertex *)vert1 andTopVertex:(Vertex *)vert2 andBottomRightVertex:(Vertex *)vert3;

- (void) draw;

@end
