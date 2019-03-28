#import "FractionMath.h"

@implementation Fraction(MathOps)

-(Fraction*) add: (Fraction*) item
{
    Fraction *new_item = [Fraction new];

    int newNumerator;
    int newDenominator;

    newNumerator = (numerator * [item denumerator]) + ([item numerator] * denumerator);
    newDenominator = denumerator * [item denumerator];

    [new_item setTo: newNumerator over: newDenominator];
    [new_item reduce];

    return new_item;
}

-(Fraction*) sub: (Fraction*) item
{
    Fraction *new_item = [Fraction new];

    int newNumerator;
    int newDenominator;

    newNumerator = (numerator * [item denumerator]) - ([item numerator] * denumerator);
    newDenominator = denumerator * [item denumerator];

    [new_item setTo: newNumerator over: newDenominator];
    [new_item reduce];

    return new_item;
}

-(Fraction*) mul: (Fraction*) item
{
    Fraction *new_item = [Fraction new];

    [new_item setTo: numerator * [item numerator] over: denumerator * [item denumerator]];
    [new_item reduce];

    return new_item;
}

-(Fraction*) div: (Fraction*) item
{
    Fraction *new_item = [Fraction new];

    [new_item setTo: numerator * [item denumerator] over: denumerator * [item numerator]];
    [new_item reduce];

    return new_item;
}

-(Fraction*) invert: (Fraction*) item
{
    Fraction *new_item = [Fraction new];

    [new_item setTo: denumerator over:  numerator];

    return new_item;
}

@end
