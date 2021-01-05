//
//  main.m
//  Inheritance
//
//  Created by 김기현 on 2021/01/05.
//

#import <Foundation/Foundation.h>

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

NSString *colorName(ShapeColor colorName) {
    switch (colorName) {
        case kRedColor:
            return @"red";
        case kGreenColor:
            return @"green";
        case kBlueColor:
            return @"blue";
        default:
            break;
    }
    
    return @"no clue";
}

@interface Shape : NSObject {
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end // Shape

@implementation Shape

- (void) setFillColor:(ShapeColor) c {
    fillColor = c;
}

- (void) setBounds:(ShapeRect) b {
    bounds = b;
}

- (void) draw {
    
}

@end // Shape

@interface Circle : Shape

@end // Circle

@interface Rectangle : Shape

@end // Rectangle

@implementation Circle
- (void) draw {
    NSLog(@"drawing a circle at (%d, %d, %d, %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end // Circle

@implementation Rectangle
- (void) draw {
    NSLog(@"drawing a rectangle at (%d, %d, %d, %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end // Rectangle

void drawShapes(__strong id shapes[], int count) {
    for (int i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id shapes[2];
        
        ShapeRect rect0 = {0, 0, 10, 30};
        shapes[0] = [Circle new];
        [shapes[0] setBounds: rect0];
        [shapes[0] setFillColor: kRedColor];
        
        ShapeRect rect1 = {10, 10, 10, 30};
        shapes[1] = [Rectangle new];
        [shapes[1] setBounds: rect1];
        [shapes[1] setFillColor: kBlueColor];
        
        drawShapes(shapes, 2);
    }
    return 0;
}
