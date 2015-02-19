// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Event.m instead.

#import "_Event.h"

// These need to be implemented in your project parse data from/to json string
extern NSDate* (^dateFromString)(NSString* dateString, NSString* format);// if you get a link error, you need to implement this block
extern NSString* (^stringFromDate)(NSDate* date, NSString* format); // if you get a link error, you need to implement this block

#import "Invitation.h"

#import "Schedule.h"

static inline BOOL IsNotNull(id object)
{
    return !((object == nil) || ([object isEqual:[NSNull null]]));
}

const struct EventAttributes EventAttributes = {
	.doubleNum = @"doubleNum",
	.floatNum = @"floatNum",
	.int16Bit = @"int16Bit",
	.int32Bit = @"int32Bit",
	.int64Bit = @"int64Bit",
	.isTrue = @"isTrue",
	.name = @"name",
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

	if ([key isEqualToString:@"doubleNumValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"doubleNum"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"floatNumValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"floatNum"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"int16BitValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"int16Bit"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"int32BitValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"int32Bit"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"int64BitValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"int64Bit"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isTrueValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isTrue"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic doubleNum;

- (double)doubleNumValue {
	NSNumber *result = [self doubleNum];
	return [result doubleValue];
}

- (void)setDoubleNumValue:(double)value_ {
	[self setDoubleNum:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveDoubleNumValue {
	NSNumber *result = [self primitiveDoubleNum];
	return [result doubleValue];
}

- (void)setPrimitiveDoubleNumValue:(double)value_ {
	[self setPrimitiveDoubleNum:[NSNumber numberWithDouble:value_]];
}

@dynamic floatNum;

- (float)floatNumValue {
	NSNumber *result = [self floatNum];
	return [result floatValue];
}

- (void)setFloatNumValue:(float)value_ {
	[self setFloatNum:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveFloatNumValue {
	NSNumber *result = [self primitiveFloatNum];
	return [result floatValue];
}

- (void)setPrimitiveFloatNumValue:(float)value_ {
	[self setPrimitiveFloatNum:[NSNumber numberWithFloat:value_]];
}

@dynamic int16Bit;

- (int16_t)int16BitValue {
	NSNumber *result = [self int16Bit];
	return [result shortValue];
}

- (void)setInt16BitValue:(int16_t)value_ {
	[self setInt16Bit:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveInt16BitValue {
	NSNumber *result = [self primitiveInt16Bit];
	return [result shortValue];
}

- (void)setPrimitiveInt16BitValue:(int16_t)value_ {
	[self setPrimitiveInt16Bit:[NSNumber numberWithShort:value_]];
}

@dynamic int32Bit;

- (int32_t)int32BitValue {
	NSNumber *result = [self int32Bit];
	return [result intValue];
}

- (void)setInt32BitValue:(int32_t)value_ {
	[self setInt32Bit:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveInt32BitValue {
	NSNumber *result = [self primitiveInt32Bit];
	return [result intValue];
}

- (void)setPrimitiveInt32BitValue:(int32_t)value_ {
	[self setPrimitiveInt32Bit:[NSNumber numberWithInt:value_]];
}

@dynamic int64Bit;

- (int64_t)int64BitValue {
	NSNumber *result = [self int64Bit];
	return [result longLongValue];
}

- (void)setInt64BitValue:(int64_t)value_ {
	[self setInt64Bit:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveInt64BitValue {
	NSNumber *result = [self primitiveInt64Bit];
	return [result longLongValue];
}

- (void)setPrimitiveInt64BitValue:(int64_t)value_ {
	[self setPrimitiveInt64Bit:[NSNumber numberWithLongLong:value_]];
}

@dynamic isTrue;

- (BOOL)isTrueValue {
	NSNumber *result = [self isTrue];
	return [result boolValue];
}

- (void)setIsTrueValue:(BOOL)value_ {
	[self setIsTrue:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveIsTrueValue {
	NSNumber *result = [self primitiveIsTrue];
	return [result boolValue];
}

- (void)setPrimitiveIsTrueValue:(BOOL)value_ {
	[self setPrimitiveIsTrue:[NSNumber numberWithBool:value_]];
}

@dynamic name;

@dynamic timeStamp;

@dynamic invitation;

@dynamic schedule;

-(void)_jsonExport:(NSMutableDictionary*)result
{

	if (self.doubleNum) {

		result[@"doubleNum"] = self.doubleNum;

	}

	if (self.floatNum) {

		result[@"floatNum"] = self.floatNum;

	}

	if (self.int16Bit) {

		result[@"int16Bit"] = self.int16Bit;

	}

	if (self.int32Bit) {

		result[@"int32Bit"] = self.int32Bit;

	}

	if (self.int64Bit) {

		result[@"int64Bit"] = self.int64Bit;

	}

	if (self.isTrue) {

		result[@"isTrue"] = self.isTrue;

	}

	if (self.name) {

		result[@"name"] = self.name;

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

	_Event* obj = [self.class insertInManagedObjectContext:ctx];

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

		if (IsNotNull([data valueForKeyPath:@"doubleNum"])) {

			id value = [data valueForKeyPath:@"doubleNum"];
			if (![value isKindOfClass:[NSNumber class]]) {
				self.doubleNum = [NSNumber numberWithDouble:[value doubleValue]];
			} else {
				self.doubleNum = value;
			}

		}

		if (IsNotNull([data valueForKeyPath:@"floatNum"])) {

			id value = [data valueForKeyPath:@"floatNum"];
			if (![value isKindOfClass:[NSNumber class]]) {
				self.floatNum = [NSNumber numberWithFloat:[value floatValue]];
			} else {
				self.floatNum = value;
			}

		}

		if (IsNotNull([data valueForKeyPath:@"int16Bit"])) {

			id value = [data valueForKeyPath:@"int16Bit"];
			if (![value isKindOfClass:[NSNumber class]]) {
				self.int16Bit = [NSNumber numberWithShort:[value shortValue]];
			} else {
				self.int16Bit = value;
			}

		}

		if (IsNotNull([data valueForKeyPath:@"int32Bit"])) {

			id value = [data valueForKeyPath:@"int32Bit"];
			if (![value isKindOfClass:[NSNumber class]]) {
				self.int32Bit = [NSNumber numberWithInt:[value intValue]];
			} else {
				self.int32Bit = value;
			}

		}

		if (IsNotNull([data valueForKeyPath:@"int64Bit"])) {

			id value = [data valueForKeyPath:@"int64Bit"];
			if (![value isKindOfClass:[NSNumber class]]) {
				self.int64Bit = [NSNumber numberWithLongLong:[value longLongValue]];
			} else {
				self.int64Bit = value;
			}

		}

		if (IsNotNull([data valueForKeyPath:@"isTrue"])) {

			self.isTrue = [data valueForKeyPath:@"isTrue"];

		}

		if (IsNotNull([data valueForKeyPath:@"name"])) {

			self.name = [data valueForKeyPath:@"name"];

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
	    	self.invitation = [Invitation createFromJSON:value inContext:ctx];
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

