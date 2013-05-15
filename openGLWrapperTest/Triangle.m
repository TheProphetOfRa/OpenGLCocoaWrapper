//
//  TriangleO.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "Triangle.h"
#import "Vertex.h"

@implementation Triangle

- (id) init {
    
    //vertex aray
    NSArray *verts;
    
    //predefined vertices
    Vertex *vert1 = [[[Vertex alloc] initWithXCoord:0.0f andYCoord:0.6f andZCoord:0.0f] retain];
    Vertex *vert2 = [[[Vertex alloc] initWithXCoord:-0.6f andYCoord:0.0f andZCoord:0.0f] retain];
    Vertex *vert3 = [[[Vertex alloc] initWithXCoord:0.6f andYCoord:0.0f andZCoord:0.0f] retain];
    
    
    //fill Array with vertex information to be loaded into vertex buffer by parent class
    verts = [NSArray arrayWithObjects:vert1, vert2, vert3, nil];
    
    //init object
    self = [super initWithVertices:verts];
    
    
    return self;
    
}

-(id) initWithBottomLeftVertex:(Vertex *)vert1 andTopVertex:(Vertex *)vert2 andBottomRightVertex:(Vertex *)vert3{
    
    //init vertex array
    NSArray *verts = [NSArray arrayWithObjects:vert1, vert2, vert3, nil];
    
    //init object
    self = [super initWithVertices:verts];
    
    
    return self;
    
}

- (void) draw {
    
    //Set the colour of the triangle
    glColor3f(1.0f, 0.0f, 0.0f);
    
    //Rotate the triangle
    glRotatef(_rotation, 0.0f, 1.0f, 0.0f);
    
    //Begin drawing state
    glBegin(GL_TRIANGLES);
    {
        
        //call the main 2D object draw function
        [super draw];
    
    
    }

    //End drawing state
    glEnd();

}

@end
