#import "Comparios.h"

@implementation Fraction(Comparios)

-(BOOL) isEqualTo: (Fraction*) item
{
    Fraction* result = [self div: item];
    int div = [result numerator] / [result denumerator];
    [result release];

    return  div == 0 ? YES : NO;
}

-(int) compare: (Fraction*) item
{
    int div_self= [self numerator] / [self denumerator];
    int div_item = [item numerator] / [item denumerator];
    int result = 0;

    if (div_self < div_item)
        result = -1;
    else
    if (div_self == div_item)
        result = 0;
    else
        result = 1;

    return result;
}

@end
