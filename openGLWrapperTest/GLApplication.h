//
//  GLApplication.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 15/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Triangle;
@class Quad;

@interface GLApplication : NSObject {
    
    Triangle    *_tri;
    Quad        *_quad;
    
}

- (void) InitGL;
- (void) DrawGL;

@end
