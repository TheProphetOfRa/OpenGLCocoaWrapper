//
//  Vertex.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vertex : NSObject{
    float _x;
    float _y;
    float _z;
}

-(id) initWithXCoord: (float) x andYCoord: (float) y andZCoord: (float) z;

-(float) getX;
-(float) getY;
-(float) getZ;

@end
