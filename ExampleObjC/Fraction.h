#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
@private
    int numerator;
    int denumerator;
}

@property int numerator;
@property int denumerator;

-(void) setTo: (int) x over: (int) y;
-(void) reduce;
-(void) print;
-(NSString*) toString;

@end
