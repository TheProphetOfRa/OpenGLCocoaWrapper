//
//  RendererO.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "Renderer.h"
#import "Triangle.h"
#import "Quad.h"
#import "Vertex.h"

@implementation Renderer

- (id) init {
    
    if (self = [super init]){
       
        {
            //Triangle vertices
            Vertex *botLeftVert = [[[Vertex alloc] initWithXCoord:-0.5f andYCoord:0.0f andZCoord:0.0f] retain];
            Vertex *topVert = [[[Vertex alloc] initWithXCoord:0.0f andYCoord:0.5f andZCoord:-0.5f] retain];
            Vertex *botRightVert = [[[Vertex alloc] initWithXCoord:0.5f andYCoord:0.0f andZCoord:0.0f] retain];
            
            //Allocate Triangle
            _tri = [[Triangle alloc] initWithBottomLeftVertex:botLeftVert andTopVertex:topVert andBottomRightVertex:botRightVert];
        }
        
        {
            //Quad vertices
            Vertex *botLeftVert = [[[Vertex alloc] initWithXCoord:-0.5f andYCoord:-1.0f andZCoord:0.0f] retain];
            Vertex *topLeftVert = [[[Vertex alloc] initWithXCoord:-0.5f andYCoord:0.0f andZCoord:0.0f] retain];
            Vertex *topRightVert = [[[Vertex alloc] initWithXCoord:0.5f andYCoord:0.0f andZCoord:0.0f] retain];
            Vertex *botRightVert = [[[Vertex alloc] initWithXCoord:0.5f andYCoord:-1.0f andZCoord:0.0f] retain];
            
            //Allocate Quad
            _quad = [[Quad alloc] initWithBottomLeftVertex:botLeftVert andTopLeftVertex:topLeftVert andTopRightVertex:topRightVert andBottomRightVertex:botRightVert];
        }
        
    }
    
    return self;
    
}

- (void) InitGL {
    
    glShadeModel(GL_SMOOTH);
    glClearDepth(1.0f);
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

    
}

- (void) DrawGL {
    
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    [_tri draw];
    [_quad draw];
    
    glFlush();
    
}

-(void) dealloc {
    
    [super dealloc];
    
}

@end
