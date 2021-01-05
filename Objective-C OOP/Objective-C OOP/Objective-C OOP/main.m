//
//  main.m
//  Objective-C OOP
//
//  Created by 김기현 on 2020/12/29.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kOblateSpheroid,
    kTriangle
} ShapeType;

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

NSString *colorName(ShapeColor colorName) {
    switch (colorName) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
        default:
            break;
    }
    
    return @"no clue";
}

void drawCircle(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a circle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

void drawRectangle(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a rectangle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

void drawEgg(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a egg at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

void drawShape(Shape shapes[], int count) {
    int i;
    
    for (i = 0; i < count; i++) {
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kOblateSpheroid:
                drawEgg(shapes[i].bounds, shapes[i].fillColor);
                break;
            default:
                break;
        }
    }
}

@interface Circle : NSObject {
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end // Circle

// 클래스의 내용을 위한 코드를 작성하려고 한다는 것을 컴파일러에게 알려주는 지시자
@implementation Circle

- (void) setFillColor: (ShapeColor) c {
    fillColor = c;
} // setFillColor

- (void) setBounds: (ShapeRect) b {
    bounds = b;
} // setBounds

- (void) draw {
    NSLog(@"drawing a circle at (%d, %d, %d, %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
} // draw

@end // Circle

@interface Rectangle : NSObject {
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end // Rectangle

@implementation Rectangle

- (void) setFillColor:(ShapeColor) c {
    fillColor = c;
} // setFillColor

- (void) setBounds:(ShapeRect) b {
    bounds = b;
}

- (void) draw {
    NSLog(@"drawing a rectangle at (%d, %d, %d, %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end

@interface Triangle : NSObject {
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end

@implementation Triangle

- (void) setFillColor:(ShapeColor) c {
    fillColor = c;
}

- (void) setBounds:(ShapeRect) b {
    bounds = b;
}

- (void) draw {
    NSLog(@"drawing a triangle at (%d, %d, %d, %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end

void drawShapes(__strong id shapes[], int count) {
    int i;
    
    for (i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id shapes[3];
        
        ShapeRect rect0 = {0, 0, 10, 30};
        shapes[0] = [Circle new];
        [shapes[0] setBounds: rect0];
        [shapes[0] setFillColor: kRedColor];
        
        ShapeRect rect1 = {30, 40, 50, 60};
        shapes[1] = [Rectangle new];
        [shapes[1] setBounds: rect1];
        [shapes[1] setFillColor: kBlueColor];
        
        ShapeRect rect2 = {15, 19, 37, 29};
        shapes[2] = [Triangle new];
        [shapes[2] setBounds: rect2];
        [shapes[2] setFillColor: kGreenColor];
        
        drawShapes(shapes, 3);
    }
    
    return 0;
}


