#import "AddresCard.h"
#import "AddresProtocol.h"

#pragma once

@interface AddressBook : NSObject <AddresCardBaseOperations>
{
@private
    NSMutableArray *book;
    NSNumber *indexIncrement;
}

@property(copy, nonatomic) NSNumber* indexIncrement;

-(void) setBook: (NSArray*) copyArray;
-(NSArray*) book;
-(void) setEmptyBook;

-(void) addCard: (AddressCard*) card;
-(void) addCard: (NSString*) name andEmail: (NSString*) email;
-(void) editCard: (AddressCard*) card;
-(void) editCard: (NSNumber*) newIndex editName: (NSString*) newName: editEmail: (NSString*) newEmail;
-(BOOL) deleteCard: (AddressCard*) card;
-(BOOL) deleteCardOfIndex: (NSNumber*) index;

-(AddressCard*) getCard: (NSNumber*) index;

-(void) print;

-(id) init;
-(id) initWithArray: (NSArray*) copyArray;
-(void) dealloc;


@end
