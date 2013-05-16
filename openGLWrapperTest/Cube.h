//
//  Cube.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Object3D.h"

@interface Cube : Object3D

-(id) initWithCenter:(float) c andWidth:(float) w;

-(void) draw;

@end
