#import "AddresCard.h"

@implementation AddressCard

@synthesize index;
@synthesize name;
@synthesize email;

/*-(void) setName:(NSString*) str
{
    [name release];
    name = [[NSString  alloc] initWithString: str];
}

-(void) setEmail:(NSString*) str
{
    [email release];n
    email = [[NSString alloc] initWithString: str];
}

-(NSString*) name
{
    return name;
}

-(NSString*) email
{
    return email;
}

-(void) dealloc
{
    [name release];
    [email release];

    [super dealloc];
}*/

-(void) setName: (NSString*) new_name
{
    name =  [NSString stringWithString: new_name];
}

-(void) setEmail: (NSString*) new_email
{
    email = [NSString stringWithString: new_email];
}

-(void) setName: (NSString*) new_name andEmail: (NSString*) new_email andIndex: (NSNumber*) new_index
{
    index = [NSNumber numberWithInt: [new_index intValue]];
    name =  [NSString stringWithString: new_name];
    email = [NSString stringWithString: new_email];
}

-(void) print
{
    NSLog(@"");
    NSLog(@"==========================");
    NSLog(@"|  %-22i|", [index intValue]);
    NSLog(@"|  %-22s|", [name UTF8String]);
    NSLog(@"|  %-22s|", [email UTF8String]);
    NSLog(@"==========================");
}

-(BOOL) isEqual: (AddressCard*) compareCard
{
    if([name isEqualToString: [compareCard name]] == YES &&
       [email isEqualToString: [compareCard email]] == YES)
        return YES;

    return NO;
}

@end
