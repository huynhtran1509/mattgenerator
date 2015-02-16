// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Invitation.h instead.

#import <CoreData/CoreData.h>

extern const struct InvitationAttributes {
	__unsafe_unretained NSString *message;
	__unsafe_unretained NSString *rsvpDate;
} InvitationAttributes;

extern const struct InvitationRelationships {
	__unsafe_unretained NSString *event;
} InvitationRelationships;

extern const struct InvitationUserInfo {
	__unsafe_unretained NSString *jsonOptions;
} InvitationUserInfo;

@class Event;

@interface InvitationID : NSManagedObjectID {}
@end

@interface _Invitation : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) InvitationID* objectID;

@property (nonatomic, strong) NSString* message;

//- (BOOL)validateMessage:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* rsvpDate;

//- (BOOL)validateRsvpDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Event *event;

//- (BOOL)validateEvent:(id*)value_ error:(NSError**)error_;

@end

@interface _Invitation (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveMessage;
- (void)setPrimitiveMessage:(NSString*)value;

- (NSDate*)primitiveRsvpDate;
- (void)setPrimitiveRsvpDate:(NSDate*)value;

- (Event*)primitiveEvent;
- (void)setPrimitiveEvent:(Event*)value;

@end

@interface _Invitation (JSONImport)
+(id)createFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
+(NSArray*)createFromJSONArray:(NSArray*)array inContext:(NSManagedObjectContext*)ctx;
-(void)updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
-(void)didImportJSON;
@end

@interface _Invitation (JSONImportPrivate)
-(void)_updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
@end

@interface _Invitation (JSONExport)

-(NSDictionary*)jsonExport;

@end

@interface _Invitation (JSONExportPrivate)
-(void)_jsonExport:(NSMutableDictionary*)result;
@end

