#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction*) add: (Fraction*) item;
-(Fraction*) mul: (Fraction*) item;
-(Fraction*) sub: (Fraction*) item;
-(Fraction*) div: (Fraction*) item;
-(Fraction*) invert: (Fraction*) item;

@end
