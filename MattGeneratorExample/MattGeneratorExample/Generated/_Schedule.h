// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Schedule.h instead.

#import <CoreData/CoreData.h>

extern const struct ScheduleAttributes {
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *size;
} ScheduleAttributes;

extern const struct ScheduleRelationships {
	__unsafe_unretained NSString *events;
} ScheduleRelationships;

extern const struct ScheduleUserInfo {
	__unsafe_unretained NSString *jsonOptions;
} ScheduleUserInfo;

@class Event;

@interface ScheduleID : NSManagedObjectID {}
@end

@interface _Schedule : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ScheduleID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* size;

@property (atomic) int32_t sizeValue;
- (int32_t)sizeValue;
- (void)setSizeValue:(int32_t)value_;

//- (BOOL)validateSize:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *events;

- (NSMutableSet*)eventsSet;

@end

@interface _Schedule (EventsCoreDataGeneratedAccessors)
- (void)addEvents:(NSSet*)value_;
- (void)removeEvents:(NSSet*)value_;
- (void)addEventsObject:(Event*)value_;
- (void)removeEventsObject:(Event*)value_;

@end

@interface _Schedule (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSNumber*)primitiveSize;
- (void)setPrimitiveSize:(NSNumber*)value;

- (int32_t)primitiveSizeValue;
- (void)setPrimitiveSizeValue:(int32_t)value_;

- (NSMutableSet*)primitiveEvents;
- (void)setPrimitiveEvents:(NSMutableSet*)value;

@end

@interface _Schedule (JSONImport)
+(id)createFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
+(NSArray*)createFromJSONArray:(NSArray*)array inContext:(NSManagedObjectContext*)ctx;
-(void)updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
-(void)didImportJSON;
@end

@interface _Schedule (JSONImportPrivate)
-(void)_updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx;
@end

@interface _Schedule (JSONExport)

-(NSDictionary*)jsonExport;

@end

@interface _Schedule (JSONExportPrivate)
-(void)_jsonExport:(NSMutableDictionary*)result;
@end

