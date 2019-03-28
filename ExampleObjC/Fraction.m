#import "Fraction.h"
#import "FractionMath.h"

@implementation Fraction

@synthesize numerator;
@synthesize denumerator;

-(void) setTo: (int) x over: (int) y
{
    numerator = x;
    denumerator = y;
}

-(void) reduce
{
    while ((numerator%2 == 0 && denumerator%2 == 0) ||
           (numerator%3 == 0 && denumerator%3 == 0)  )
    {
        numerator = numerator%2 == 0 ? (numerator/2) : (numerator/3);
        denumerator = denumerator%2 == 0 ? (denumerator/2) : (denumerator/3);
    }
}

-(NSString*) toString
{
    return [NSString stringWithFormat:@"%d/%d", numerator, denumerator];
}

-(void) print
{
    NSLog([self toString]);
}

@end
