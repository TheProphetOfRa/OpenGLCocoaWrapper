//
//  Quad.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Object2D.h"

@class Vertex;

@interface Quad : Object2D 

-(id) initWithBottomLeftVertex:(Vertex *)vert1 andTopLeftVertex:(Vertex *)vert2 andTopRightVertex:(Vertex *)vert3 andBottomRightVertex:(Vertex *)vert4;

-(void) draw;

@end
