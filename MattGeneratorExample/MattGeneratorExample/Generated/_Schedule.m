// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Schedule.m instead.

#import "_Schedule.h"

// These need to be implemented in your project parse data from/to json string
extern NSDate* (^dateFromString)(NSString* dateString, NSString* format);// if you get a link error, you need to implement this block
extern NSString* (^stringFromDate)(NSDate* date, NSString* format); // if you get a link error, you need to implement this block

#import "_Event.h"

static inline BOOL IsNotNull(id object)
{
    return !((object == nil) || ([object isEqual:[NSNull null]]));
}

const struct ScheduleAttributes ScheduleAttributes = {
	.name = @"name",
	.size = @"size",
};

const struct ScheduleRelationships ScheduleRelationships = {
	.events = @"events",
};

const struct ScheduleUserInfo ScheduleUserInfo = {
	.jsonOptions = @"import,export",
};

@implementation ScheduleID
@end

@implementation _Schedule

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Schedule" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Schedule";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Schedule" inManagedObjectContext:moc_];
}

- (ScheduleID*)objectID {
	return (ScheduleID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"sizeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"size"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic name;

@dynamic size;

- (int32_t)sizeValue {
	NSNumber *result = [self size];
	return [result intValue];
}

- (void)setSizeValue:(int32_t)value_ {
	[self setSize:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveSizeValue {
	NSNumber *result = [self primitiveSize];
	return [result intValue];
}

- (void)setPrimitiveSizeValue:(int32_t)value_ {
	[self setPrimitiveSize:[NSNumber numberWithInt:value_]];
}

@dynamic events;

- (NSMutableSet*)eventsSet {
	[self willAccessValueForKey:@"events"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"events"];

	[self didAccessValueForKey:@"events"];
	return result;
}

-(void)_jsonExport:(NSMutableDictionary*)result
{

	if (self.name) {

		result[@"name"] = self.name;

	}

	if (self.size) {

		result[@"size"] = self.size;

	}

    if (self.events) {
        NSMutableArray* array = [NSMutableArray array];
        for (_Event* obj in self.events) {
            [array addObject:[obj jsonExport]];
        }
        result[@"events"] = array;
    }

}

-(NSDictionary*)jsonExport {
	NSMutableDictionary* result = [NSMutableDictionary dictionary];
	[self _jsonExport:result];
	return result;
}

+(id)createFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx {

	_Schedule* obj = [_Schedule insertInManagedObjectContext:ctx];

	[obj updateFromJSON:data inContext:ctx];
	return obj;
}

+(NSArray*)createFromJSONArray:(NSArray*)array inContext:(NSManagedObjectContext*)ctx {
	NSMutableArray* result = [NSMutableArray array];
	for (NSDictionary* data in array) {
		[result addObject:[self.class createFromJSON:data inContext:ctx]];
	}
	return result;
}

-(void)updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx {
	data = [self willImportJSON:data];
	if (data) {
		[self _updateFromJSON:data inContext:ctx];
		[self didImportJSON];
	}
}

-(void)_updateFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx {

		if (IsNotNull([data valueForKeyPath:@"name"])) {

			self.name = [data valueForKeyPath:@"name"];

		}

		if (IsNotNull([data valueForKeyPath:@"size"])) {

			id value = [data valueForKeyPath:@"size"];
			if (![value isKindOfClass:[NSNumber class]]) {
				self.size = [NSNumber numberWithDouble:[value doubleValue]];
			} else {
				self.size = value;
			}

		}

	{
		NSArray* objs = [data valueForKeyPath:@"events"];
	    if (IsNotNull(objs)) {
	        for (NSDictionary* obj in objs) {
	        	[self addEventsObject:[_Event createFromJSON:obj inContext:ctx]];
	        }
	    }
	}

}

-(NSDictionary*)willImportJSON:(NSDictionary*)data
{
	return data;
}

-(void)didImportJSON
{

}

@end

