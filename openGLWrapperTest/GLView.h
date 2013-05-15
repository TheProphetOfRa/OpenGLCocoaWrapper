//
//  MyOpenGLView.h
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 14/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Renderer;

@interface GLView : NSOpenGLView {
    
    Renderer    *_renderer;
    NSTimer     *_timer;
        
}

-(void) updateFrame;

@end
