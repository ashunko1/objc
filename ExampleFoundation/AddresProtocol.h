#pragma once

@protocol AddresCardBaseOperations

@required
-(void) addCard: (AddressCard*) card;
-(void) addCard: (NSString*) name andEmail: (NSString*) email;
-(void) editCard: (AddressCard*) card;
-(void) editCard: (NSNumber*) newIndex editName: (NSString*) newName: editEmail: (NSString*) newEmail;
-(BOOL) deleteCard: (AddressCard*) card;
-(BOOL) deleteCardOfIndex: (NSNumber*) index;
-(AddressCard*) getCard: (NSNumber*) index;

@end
