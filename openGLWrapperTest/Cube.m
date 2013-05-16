//
//  Cube.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "Cube.h"
#import "Vertex.h"
#import "Normal.h"

@implementation Cube

-(id) init {
    
    NSArray *verts, *normals;
    
    //intialise vertices
    Vertex *vert1 = [[[Vertex alloc] initWithXCoord:-0.5f andYCoord:-0.5f andZCoord:0.0f] retain];
    Normal *norm1 = [[[Normal alloc] initWithXCoord:-0.5f andYCoord:-0.5f andZCoord:0.0f] retain];
    Vertex *vert2 = [[[Vertex alloc] initWithXCoord:-0.5f andYCoord:0.5f andZCoord:0.0f] retain];
    Normal *norm2 = [[[Normal alloc] initWithXCoord:-0.5f andYCoord:0.5f andZCoord:0.0f] retain];
    Vertex *vert3 = [[[Vertex alloc] initWithXCoord:0.5f andYCoord:0.5f andZCoord:0.0f] retain];
    Normal *norm3 = [[[Normal alloc] initWithXCoord:0.5f andYCoord:0.5f andZCoord:0.0f] retain];
    Vertex *vert4 = [[[Vertex alloc] initWithXCoord:0.5f andYCoord:-0.5f andZCoord:0.0f] retain];
    Normal *norm4 = [[[Normal alloc] initWithXCoord:0.5f andYCoord:-0.5f andZCoord:0.0f] retain];
    
    //add vertices to array
    verts = [NSArray arrayWithObjects:vert1, vert2, vert3, vert4, nil];
    
    //add normals to array
    normals = [NSArray arrayWithObjects:norm1, norm2, norm3, norm4, nil];
    
    //init object
    self = [super initWithVertices:verts andNormals:normals];
    
    return self;
    
}

-(id) initWithCenter:(float)c andWidth:(float)w {
    
    NSArray *verts, *normals;
    
    //intialise vertices
    //Front face
    Vertex *vert1 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm1 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert2 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm2 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)]retain];
    
    Vertex *vert3 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm3 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert4 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm4 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    
    
    //Top face
    Vertex *vert5 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm5 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert8 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm8 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert7 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm7 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert6 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm6 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    

    
    //Back face
    Vertex *vert9 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm9 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert10 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm10 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert11 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm11 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert12 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm12 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    

    
    //Bottom face
    Vertex *vert13 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm13 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert16 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm16 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert15 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm15 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert14 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm14 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    
    
    //Left face
    Vertex *vert17 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm17 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert20 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm20 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert19 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm19 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert18 = [[[Vertex alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm18 = [[[Normal alloc] initWithXCoord:c-(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    
    
    //Right face
    Vertex *vert21 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm21 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c-(w/2)] retain];
    
    Vertex *vert24 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm24 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c-(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert23 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    Normal *norm23 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c+(w/2)] retain];
    
    Vertex *vert22 = [[[Vertex alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    Normal *norm22 = [[[Normal alloc] initWithXCoord:c+(w/2) andYCoord:c+(w/2) andZCoord:c-(w/2)] retain];
    
    //add vertices too array
    verts = [NSArray arrayWithObjects:vert1, vert2, vert3, vert4, vert5, vert6, vert7, vert8, vert9, vert10, vert11, vert12, vert13, vert14, vert15, vert16, vert17, vert18, vert19, vert20, vert21, vert22, vert23, vert24, nil];
    
    normals = [NSArray arrayWithObjects:norm1, norm2, norm3, norm4, norm5, norm6, norm7, norm8, norm9, norm10, norm11, norm12, norm13, norm14, norm15, norm16, norm17, norm18, norm19, norm20, norm21, norm22, norm23, norm24, nil];
    
    //init object
    self = [super initWithVertices:verts andNormals:normals];
    
    return self;
    
}

-(void) draw {
    
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
