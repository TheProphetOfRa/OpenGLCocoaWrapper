//
//  Object2D.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "Object2D.h"
#import "Vertex.h"

@implementation Object2D

- (id) initWithVertices:(NSArray *)verts {
    
    if(self = [super init]){
        //initialise the vertex buffer
        _vertices = [verts retain];
        
        //init rotation variable
        _rotation = 1.0f;
    }
    
    return self;
    
}

-(void) draw {

    //Push commands to the stack
    glPushMatrix();
    
    //Draw vertices
    for(int i = 0; i < [_vertices count] ; i++){
        Vertex *vert = _vertices[i];
        glVertex3f([vert getX], [vert getY], [vert getZ]);
    }
    
    //Pop commands from the stack
    glPopMatrix();
    
}

-(void) changeRotationSpeed:(float)speed {
    _rotation = speed;
}

-(void) dealloc {
    
    //release the vertex buffer
    [_vertices release];
    
    [super dealloc];
    
}

@end
