// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Event.h instead.

#import <CoreData/CoreData.h>

extern const struct EventAttributes {
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *sortOrder;
	__unsafe_unretained NSString *timeStamp;
} EventAttributes;

extern const struct EventRelationships {
	__unsafe_unretained NSString *invitation;
	__unsafe_unretained NSString *schedule;
} EventRelationships;

extern const struct EventUserInfo {
	__unsafe_unretained NSString *jsonOptions;
} EventUserInfo;

@class Invitation;
@class Schedule;

@interface EventID : NSManagedObjectID {}
@end

@interface _Event : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) EventID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* sortOrder;

@property (atomic) int32_t sortOrderValue;
- (int32_t)sortOrderValue;
- (void)setSortOrderValue:(int32_t)value_;

//- (BOOL)validateSortOrder:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* timeStamp;

//- (BOOL)validateTimeStamp:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Invitation *invitation;

//- (BOOL)validateInvitation:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Schedule *schedule;

//- (BOOL)validateSchedule:(id*)value_ error:(NSError**)error_;

@end

@interface _Event (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSNumber*)primitiveSortOrder;
- (void)setPrimitiveSortOrder:(NSNumber*)value;

- (int32_t)primitiveSortOrderValue;
- (void)setPrimitiveSortOrderValue:(int32_t)value_;

- (NSDate*)primitiveTimeStamp;
- (void)setPrimitiveTimeStamp:(NSDate*)value;

- (Invitation*)primitiveInvitation;
- (void)setPrimitiveInvitation:(Invitation*)value;

- (Schedule*)primitiveSchedule;
- (void)setPrimitiveSchedule:(Schedule*)value;

@end

@interface _Event (JSONImport)
+(id)createFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
+(NSArray*)createFromJSONArray:(NSArray*)array inContext:(NSManagedObjectContext*)ctx;
-(void)updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
-(void)didImportJSON;
@end

@interface _Event (JSONImportPrivate)
-(void)_updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
@end

@interface _Event (JSONExport)

-(NSDictionary*)jsonExport;

@end

@interface _Event (JSONExportPrivate)
-(void)_jsonExport:(NSMutableDictionary*)result;
@end

