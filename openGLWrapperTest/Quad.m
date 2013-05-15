//
//  Quad.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "Quad.h"
#import "Vertex.h"

@implementation Quad

- (id) init {
    
    NSArray *verts;
    
    //intialise vertices
    Vertex *vert1 = [[[Vertex alloc] initWithXCoord:-0.5f andYCoord:-0.5f andZCoord:0.0f] retain];
    Vertex *vert2 = [[[Vertex alloc] initWithXCoord:-0.5f andYCoord:0.5f andZCoord:0.0f] retain];
    Vertex *vert3 = [[[Vertex alloc] initWithXCoord:0.5f andYCoord:0.5f andZCoord:0.0f] retain];
    Vertex *vert4 = [[[Vertex alloc] initWithXCoord:0.5f andYCoord:-0.5f andZCoord:0.0f] retain];
    
    //add vertices too array
    verts = [NSArray arrayWithObjects:vert1, vert2, vert3, vert4, nil];
    
    //init object
    self = [super initWithVertices:verts];
    
    return self;
    
}

-(id) initWithBottomLeftVertex:(Vertex *)vert1 andTopLeftVertex:(Vertex *)vert2 andTopRightVertex:(Vertex *)vert3 andBottomRightVertex:(Vertex *)vert4{
    
    //init vertex array
    NSArray *verts = [NSArray arrayWithObjects:vert1, vert2, vert3, vert4, nil];
    
    //init object
    self = [super initWithVertices:verts];
    
    return self;
    
}

- (void) draw {
    
    //Set the colour of the triangle
    glColor3f(0.0f, 0.0f, 1.0f);
    
    //Rotate the triangle
    glRotatef(_rotation, 0.0f, 1.0f, 0.0f);
    
    //Begin drawing state
    glBegin(GL_QUADS);
    {
        
        //call the main 2D object draw function
        [super draw];
        
        
    }
    
    //End drawing state
    glEnd();
    
}

@end
