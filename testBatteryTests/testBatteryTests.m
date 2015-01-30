//
//  SatelliteTests.m
//  SatelliteTests
//
//  Created by Mihai Georgescu on 28.01.2015.
//
//

#import <Kiwi/Kiwi.h>

SPEC_BEGIN(MathSpec)

//blblabla
describe(@"Math", ^{
    it(@"is pretty cool", ^{
        NSUInteger a = 10;
        NSUInteger b = 20;
        [[theValue(a + b) should] equal:theValue(30)];
    });
});

SPEC_END
