//
//  Vertex.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex


- (id) initWithXCoord: (float) x  andYCoord: (float) y andZCoord: (float) z {
    
    if(self = [super init]){
        //assign the coords for the vertex
        _x = x;
        _y = y;
        _z = z;
        
    }
    
    return self;
    
}

//return the x coord
-(float) getX {
    return _x;
}

//return the y coord
-(float) getY {
    return _y;
}

//return the z coord
-(float) getZ {
    return _z;
}

@end
