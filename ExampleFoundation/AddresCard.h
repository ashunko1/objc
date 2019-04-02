#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
@private
    NSNumber *index;
    NSString *name;
    NSString *email;
}

@property(copy, nonatomic) NSNumber* index;
@property(copy, nonatomic) NSString* name;
@property(copy, nonatomic) NSString* email;

-(void) setName: (NSString*) new_name;
-(void) setEmail: (NSString*) new_email;
-(void) setName: (NSString*) new_name andEmail: (NSString*) new_email andIndex: (NSNumber*) new_index;

-(BOOL) isEqual: (AddressCard*) compareCard;

/*-(void) setName: (NSString*) str;
-(void) setEmail: (NSString*) str;

-(NSString*) name;
-(NSString*) email;

-(void) dealloc;*/

-(void) print;

@end
