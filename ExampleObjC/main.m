#import "Fraction.h"

int main(int argc, char const *argv[])
{

	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Fraction *f1 = [Fraction new];
	Fraction *f2 = [Fraction new];
	Fraction *f3 = nil;

	[f1 setTo: 5 over: 6];
	[f2 setTo: 8 over: 11];

	f3 = [f1 add: f2];
	NSLog(@"SUM: %@ + %@ = %@",[f1 toString], [f2 toString], [f3 toString]);
	[f3 release];

	f3 = [f1 sub: f2];
    NSLog(@"SUB: %@ - %@ = %@",[f1 toString], [f2 toString], [f3 toString]);
	[f3 release];

	f3 = [f1 mul: f2];
    NSLog(@"MUL: %@ * %@ = %@",[f1 toString], [f2 toString], [f3 toString]);
	[f3 release];

	f3 = [f1 div: f2];
    NSLog(@"DIV: %@ / %@ = %@",[f1 toString], [f2 toString], [f3 toString]);
	[f3 release];

	[f1 release];
	[f2 release];

	[pool drain];

	return 0;
}
