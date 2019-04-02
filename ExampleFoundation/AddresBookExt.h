#import "AddresBook.h"
#import "AddresProtocol.h"

#pragma once

@interface AddressBook(AddressBookExt) <AddresCardBaseOperations>

-(void) addCard: (AddressCard*) card toArray: (NSMutableArray*) array;
-(BOOL) addCard: (NSString*) name andEmail: (NSString*) email toArray: (NSMutableArray*) array;
-(void) editCard: (AddressCard*) card fromArray: (NSMutableArray*) array;
-(BOOL) deleteCard: (AddressCard*) card fromArray: (NSMutableArray*) array;

@end
