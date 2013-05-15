//
//  MyOpenGLView.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 14/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class GLApplication;

@interface GLView : NSOpenGLView {
    
    GLApplication    *_glApplication;
    NSTimer     *_timer;
        
}

-(void) updateFrame;

@end
