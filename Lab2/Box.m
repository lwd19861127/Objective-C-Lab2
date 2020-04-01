//
//  Box.m
//  Lab2
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "Box.h"

@implementation Box
- (instancetype)initWithHeight:(float) height andWidth:(float) width andLength:(float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float)calculateTheVolume
{
    return self.height * self.length * self.width;
}

- (float)howManyTimesOneBoxWillFitInsideTheOther: (Box*) anotherBox
{
    float selfVolume = self.calculateTheVolume;
    float otherBoxVolume = anotherBox.calculateTheVolume;
    if (selfVolume >= otherBoxVolume) {
        return selfVolume / otherBoxVolume;
    }else {
        return otherBoxVolume / selfVolume;
    }
}
@end
