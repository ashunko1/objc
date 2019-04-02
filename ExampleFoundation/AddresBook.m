#import "AddresBook.h"

@implementation AddressBook

@synthesize indexIncrement;

-(id) init
{
    if(self == [super init])
        [self setEmptyBook];

    return self;
}

-(id) initWithArray: (NSArray*) copyArray
{
    if(self == [super init])
        [self setBook: copyArray];

    return self;
}

-(void) dealloc
{
    for (NSArray* oneBook in book)
        [oneBook release];

    [book release];
    [super dealloc];
}

-(void) setBook: (NSArray*) copyArray
{
    [book release];
    [indexIncrement initWithInt: [copyArray count]];
    book = [[NSMutableArray alloc] initWithArray: copyArray copyItems: YES];
}

-(NSArray*) book
{
    return book;
}

-(void) setEmptyBook
{
    [book release];
    [indexIncrement initWithInt: 0];
    book = [[NSMutableArray alloc] init];
}

-(void) addCard: (AddressCard*) card
{
    if (card)
    {
        indexIncrement = [NSNumber numberWithInt: ([indexIncrement intValue] + 1)];
        [card setIndex: indexIncrement];
        [book addObject: card];
    }
}

-(void) addCard: (NSString*) name andEmail: (NSString*) email;
{
    AddressCard* new_item = [[AddressCard alloc] init];
    indexIncrement = [NSNumber numberWithInt: ([indexIncrement intValue] + 1)];
    [new_item setName: name andEmail: email andIndex: indexIncrement];

    if(new_item)
        [book addObject: new_item];
}

-(void) editCard: (AddressCard*) card
{
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"index == %@", [card index]];
    NSArray *filteredArray = [book filteredArrayUsingPredicate: pred];

    for (AddressCard* oneBook in filteredArray)
        [oneBook setName: [card name] andEmail: [card email] andIndex: [card index]];
}

-(void) editCard: (NSNumber*) newIndex editName: (NSString*) newName: editEmail: (NSString*) newEmail
{
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"index == %@", newIndex];
    NSArray *filteredArray = [book filteredArrayUsingPredicate: pred];

    for (AddressCard* oneBook in filteredArray)
        [oneBook setName: newName andEmail: editEmail andIndex: newIndex];
}

-(BOOL) deleteCard: (AddressCard*) card
{
    NSUInteger countBefore = [book count];
    [book removeObject: card];
    NSUInteger countAfter = [book count];

    if(countBefore==countAfter)
        return NO;

    return YES;
}

-(BOOL) deleteCardOfIndex: (NSNumber*) index;
{
    if ([index intValue] > ([book count] - 1))
        return NO;

    [book removeObjectAtIndex: [index intValue]];

    return YES;
}

-(AddressCard*) getCard: (NSNumber*) index
{
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"index == %@", index];
    NSArray *filteredArray = [book filteredArrayUsingPredicate: pred];

    for (AddressCard* oneBook in filteredArray)
        return oneBook;

    return nil;
}

-(void) print
{
    for (AddressCard* oneBook in book)
        [oneBook print];
}

@end
