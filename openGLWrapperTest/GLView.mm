//
//  MyOpenGLView.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 14/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "GLView.h"
#import "GLApplication.h"

@implementation GLView


//This function doens't appear to get called, ever.
- (id)initWithFrame:(NSRect)frameRect {
        
    NSOpenGLPixelFormatAttribute attr[] =
	{
        NSOpenGLPFADoubleBuffer,
		NSOpenGLPFAAccelerated,
		NSOpenGLPFAColorSize, (NSOpenGLPixelFormatAttribute) 32,
		NSOpenGLPFADepthSize, (NSOpenGLPixelFormatAttribute) 23,
		(NSOpenGLPixelFormatAttribute) 0
	};
    
	NSOpenGLPixelFormat *nsglFormat = [[[NSOpenGLPixelFormat alloc] initWithAttributes:attr] autorelease];
	
    if (self = [super initWithFrame:frameRect pixelFormat:nsglFormat]){
		_glApplication = [[GLApplication alloc] init];
    }
    
	return self;
    
}

- (void)dealloc {
    
	[_glApplication dealloc];
    
    [_timer invalidate];
    
	[super dealloc];
    
}

- (void)prepareOpenGL{
    
    //Checks if the application exists and if not creates it
    if(!_glApplication){
        _glApplication = [[GLApplication alloc] init];
    }
    
    //Initialise OpenGL components
	[_glApplication InitGL];
    
    //Set the timer for running the draw loop
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateFrame) userInfo:nil repeats:YES];
    
    //Add the timer to the main run loop of the application
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSDefaultRunLoopMode];
    
    //Keep the main loop running, may be redundant
    [[NSRunLoop mainRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5.0]];
        
}

- (void)drawRect:(NSRect)rect{
    
    //Runs on launch and draws the scene to the Rect
    [_glApplication DrawGL];
	
}

//Frame logic
- (void) updateFrame {
    
    //Draw the scene to the window
    [_glApplication DrawGL];
        
}


@end
