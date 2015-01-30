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
        NSUInteger a = 16;
        NSUInteger b = 26;
        [[theValue(a + b) should] equal:theValue(42)];
    });
});

SPEC_END
