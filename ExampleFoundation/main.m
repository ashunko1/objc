#import "AddresBook.h"
#import <Foundation/NSAutoreleasePool.h>

int main(int argc, char const *argv[])
{

	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    AddressBook* book = [[AddressBook alloc] init];

    [book addCard: @"Aliaksei.shunko" andEmail: @"alex.sh@mail.ru"];
    [book addCard: @"Mikhail.shunko" andEmail: @"miha.sh@mail.ru"];
    [book addCard: @"Elena.shunko" andEmail: @"elena.sh@mail.ru"];
    [book addCard: @"Gena.shunko" andEmail: @"Gena.sh@mail.ru"];
    [book addCard: @"Evgeny.Malkin" andEmail: @"Evgeny.Malkin@mail.ru"];
    [book addCard: @"Alex.Ovechkin" andEmail: @"Alex.Ovechkin@mail.ru"];
    [book addCard: @"Sidney.Crosby" andEmail: @"Sidney.Crosby@mail.ru"];
    [book addCard: @"GL.Buffon" andEmail: @"GL.Buffon@mail.ru"];
    [book print];

    AddressCard* editCard = [book getCard: [NSNumber numberWithInt: 2]];
    if(editCard)
    {
        NSLog(@"editing card %@ | %@ | %@",[editCard index], [editCard name], [editCard email]);
        [editCard setEmail: @"friend2@tut.by"];
        [book print];
    }
    else
        NSLog(@"card with number 2 not found");

    NSLog(@"delete a card number 2 ...");

    if ([book deleteCardOfIndex:[NSNumber numberWithInt: 2]] != YES)
        NSLog(@"card with number 2 not found");
    else
        NSLog(@"card deleted successfully");

    NSLog(@"delete a card number 4 ...");

    if ([book deleteCardOfIndex:[NSNumber numberWithInt: 4]] != YES)
        NSLog(@"card with number 4 not found");
    else
        NSLog(@"card deleted successfully");

    AddressCard* deleteCard = [book getCard: [NSNumber numberWithInt: 12]];

    if(deleteCard)
    {
         NSLog(@"delete card %@...",[deleteCard name]);

        if ([book deleteCard: deleteCard] != YES)
            NSLog(@"the card is not deleted!");
        else
            NSLog(@"card deleted successfully");
    }
    else
        NSLog(@"card with number 12 not found");


    deleteCard = [book getCard: [NSNumber numberWithInt: 1]];

    if(deleteCard)
    {
         NSLog(@"delete card %@...",[deleteCard name]);

        if ([book deleteCard: deleteCard] != YES)
            NSLog(@"the card is not deleted!");
        else
            NSLog(@"card deleted successfully");
    }
    else
        NSLog(@"card with number 12 not found");


    [book print];

    [book release];
    [pool drain];

	return 0;
}
