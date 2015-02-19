// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Event.h instead.

#import <CoreData/CoreData.h>

extern const struct EventAttributes {
	__unsafe_unretained NSString *doubleNum;
	__unsafe_unretained NSString *floatNum;
	__unsafe_unretained NSString *int16Bit;
	__unsafe_unretained NSString *int32Bit;
	__unsafe_unretained NSString *int64Bit;
	__unsafe_unretained NSString *isTrue;
	__unsafe_unretained NSString *name;
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

@property (nonatomic, strong) NSNumber* doubleNum;

@property (atomic) double doubleNumValue;
- (double)doubleNumValue;
- (void)setDoubleNumValue:(double)value_;

//- (BOOL)validateDoubleNum:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* floatNum;

@property (atomic) float floatNumValue;
- (float)floatNumValue;
- (void)setFloatNumValue:(float)value_;

//- (BOOL)validateFloatNum:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* int16Bit;

@property (atomic) int16_t int16BitValue;
- (int16_t)int16BitValue;
- (void)setInt16BitValue:(int16_t)value_;

//- (BOOL)validateInt16Bit:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* int32Bit;

@property (atomic) int32_t int32BitValue;
- (int32_t)int32BitValue;
- (void)setInt32BitValue:(int32_t)value_;

//- (BOOL)validateInt32Bit:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* int64Bit;

@property (atomic) int64_t int64BitValue;
- (int64_t)int64BitValue;
- (void)setInt64BitValue:(int64_t)value_;

//- (BOOL)validateInt64Bit:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* isTrue;

@property (atomic) BOOL isTrueValue;
- (BOOL)isTrueValue;
- (void)setIsTrueValue:(BOOL)value_;

//- (BOOL)validateIsTrue:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* timeStamp;

//- (BOOL)validateTimeStamp:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Invitation *invitation;

//- (BOOL)validateInvitation:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Schedule *schedule;

//- (BOOL)validateSchedule:(id*)value_ error:(NSError**)error_;

@end

@interface _Event (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveDoubleNum;
- (void)setPrimitiveDoubleNum:(NSNumber*)value;

- (double)primitiveDoubleNumValue;
- (void)setPrimitiveDoubleNumValue:(double)value_;

- (NSNumber*)primitiveFloatNum;
- (void)setPrimitiveFloatNum:(NSNumber*)value;

- (float)primitiveFloatNumValue;
- (void)setPrimitiveFloatNumValue:(float)value_;

- (NSNumber*)primitiveInt16Bit;
- (void)setPrimitiveInt16Bit:(NSNumber*)value;

- (int16_t)primitiveInt16BitValue;
- (void)setPrimitiveInt16BitValue:(int16_t)value_;

- (NSNumber*)primitiveInt32Bit;
- (void)setPrimitiveInt32Bit:(NSNumber*)value;

- (int32_t)primitiveInt32BitValue;
- (void)setPrimitiveInt32BitValue:(int32_t)value_;

- (NSNumber*)primitiveInt64Bit;
- (void)setPrimitiveInt64Bit:(NSNumber*)value;

- (int64_t)primitiveInt64BitValue;
- (void)setPrimitiveInt64BitValue:(int64_t)value_;

- (NSNumber*)primitiveIsTrue;
- (void)setPrimitiveIsTrue:(NSNumber*)value;

- (BOOL)primitiveIsTrueValue;
- (void)setPrimitiveIsTrueValue:(BOOL)value_;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

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

