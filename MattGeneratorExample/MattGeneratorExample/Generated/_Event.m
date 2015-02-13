// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Event.m instead.

#import "_Event.h"

// These need to be implemented in your project parse data from/to json string
extern NSDate* (^dateFromString)(NSString* dateString, NSString* format);// if you get a link error, you need to implement this block
extern NSString* (^stringFromDate)(NSDate* date, NSString* format); // if you get a link error, you need to implement this block

static inline BOOL IsNotNull(id object)
{
    return !((object == nil) || ([object isEqual:[NSNull null]]));
}

const struct EventAttributes EventAttributes = {
	.name = @"name",
	.sortOrder = @"sortOrder",
	.timeStamp = @"timeStamp",
};

const struct EventRelationships EventRelationships = {
	.invitation = @"invitation",
	.schedule = @"schedule",
};

const struct EventUserInfo EventUserInfo = {
	.jsonOptions = @"import,export",
};

@implementation EventID
@end

@implementation _Event

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Event" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Event";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Event" inManagedObjectContext:moc_];
}

- (EventID*)objectID {
	return (EventID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"sortOrderValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"sortOrder"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic name;

@dynamic sortOrder;

- (int32_t)sortOrderValue {
	NSNumber *result = [self sortOrder];
	return [result intValue];
}

- (void)setSortOrderValue:(int32_t)value_ {
	[self setSortOrder:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveSortOrderValue {
	NSNumber *result = [self primitiveSortOrder];
	return [result intValue];
}

- (void)setPrimitiveSortOrderValue:(int32_t)value_ {
	[self setPrimitiveSortOrder:[NSNumber numberWithInt:value_]];
}

@dynamic timeStamp;

@dynamic invitation;

@dynamic schedule;

-(void)_jsonExport:(NSMutableDictionary*)result
{

	if (self.name) {

		result[@"name"] = self.name;

	}

	if (self.sortOrder) {

		result[@"sortOrder"] = self.sortOrder;

	}

	if (self.timeStamp) {

		result[@"timeStamp"] = stringFromDate(self.timeStamp, @"yyyy-MM-dd'T'HH:mm:ssz");

	}

}

-(NSDictionary*)jsonExport {
	NSMutableDictionary* result = [NSMutableDictionary dictionary];
	[self _jsonExport:result];
	return result;
}

+(id)createFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx {

	_Event* obj = [_Event insertInManagedObjectContext:ctx];

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

		if (IsNotNull([data valueForKeyPath:@"sortOrder"])) {

			id value = [data valueForKeyPath:@"sortOrder"];
			if (![value isKindOfClass:[NSNumber class]]) {
				self.sortOrder = [NSNumber numberWithDouble:[value doubleValue]];
			} else {
				self.sortOrder = value;
			}

		}

		if (IsNotNull([data valueForKeyPath:@"timeStamp"])) {

			id value = [data valueForKeyPath:@"timeStamp"];
            if ([value isKindOfClass:[NSDate class]])
            {
               self.timeStamp = value;
            }
            else
            {
               self.timeStamp = dateFromString(value, @"yyyy-MM-dd'T'HH:mm:ssz");
            }

		}

	{
		id value = [data valueForKeyPath:@"invitation"];
	    if (IsNotNull(value)) {
	    	self.invitation = [_Invitation createFromJSON:value inContext:ctx];
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

