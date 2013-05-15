//
//  Object2D.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Object2D : NSObject {
    NSArray *_vertices;   //vertex buffer
    float   _rotation;    //rotation speed
}

- (id) initWithVertices: (NSArray *) verts;

-(void) draw;

-(void) changeRotationSpeed: (float) speed;

@end
