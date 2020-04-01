//
//  Box.h
//  Lab2
//
//  Created by WendaLi on 2020-04-01.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithHeight:(float) height andWidth:(float) width andLength:(float) length;
- (float)calculateTheVolume;
- (float)howManyTimesOneBoxWillFitInsideTheOther: (Box*) anotherBox;

@end
