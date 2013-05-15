//
//  MyOpenGLView.m
//  openGLWrapperTest
//
//  Created by David Hodgkinson on 14/05/2013.
//  Copyright (c) 2013 David Hodgkinson. All rights reserved.
//

#import "GLView.h"
#import "Renderer.h"

@implementation GLView


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
		_renderer = [[Renderer alloc] init];
    }
    
	return self;
    
}

- (void)dealloc {
    
	[_renderer dealloc];
    
    [_timer invalidate];
    
	[super dealloc];
    
}

- (void)prepareOpenGL{
    
    if(!_renderer){
        _renderer = [[Renderer alloc] init];
    }
    
	[_renderer InitGL];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateFrame) userInfo:nil repeats:YES];
    
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSDefaultRunLoopMode];
    
    [[NSRunLoop mainRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5.0]];
        
}

- (void)drawRect:(NSRect)rect{
    
    [_renderer DrawGL];
	
}

- (void) updateFrame {
        
    [_renderer DrawGL];
        
}


@end
