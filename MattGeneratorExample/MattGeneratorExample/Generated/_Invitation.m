// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Invitation.m instead.

#import "_Invitation.h"

// These need to be implemented in your project parse data from/to json string
extern NSDate* (^dateFromString)(NSString* dateString, NSString* format);// if you get a link error, you need to implement this block
extern NSString* (^stringFromDate)(NSDate* date, NSString* format); // if you get a link error, you need to implement this block

static inline BOOL IsNotNull(id object)
{
    return !((object == nil) || ([object isEqual:[NSNull null]]));
}

const struct InvitationAttributes InvitationAttributes = {
	.message = @"message",
	.rsvpDate = @"rsvpDate",
};

const struct InvitationRelationships InvitationRelationships = {
	.event = @"event",
};

const struct InvitationUserInfo InvitationUserInfo = {
	.jsonOptions = @"import,export",
};

@implementation InvitationID
@end

@implementation _Invitation

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Invitation" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Invitation";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Invitation" inManagedObjectContext:moc_];
}

- (InvitationID*)objectID {
	return (InvitationID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic message;

@dynamic rsvpDate;

@dynamic event;

-(void)_jsonExport:(NSMutableDictionary*)result
{

	if (self.message) {

		result[@"message"] = self.message;

	}

	if (self.rsvpDate) {

		result[@"rsvpDate"] = stringFromDate(self.rsvpDate, @"yyyy-MM-dd'T'HH:mm:ssz");

	}

}

-(NSDictionary*)jsonExport {
	NSMutableDictionary* result = [NSMutableDictionary dictionary];
	[self _jsonExport:result];
	return result;
}

+(id)createFromJSON:(NSDictionary*)data inContext:(NSManagedObjectContext*)ctx {

	_Invitation* obj = [_Invitation insertInManagedObjectContext:ctx];

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

		if (IsNotNull([data valueForKeyPath:@"message"])) {

			self.message = [data valueForKeyPath:@"message"];

		}

		if (IsNotNull([data valueForKeyPath:@"rsvpDate"])) {

			id value = [data valueForKeyPath:@"rsvpDate"];
            if ([value isKindOfClass:[NSDate class]])
            {
               self.rsvpDate = value;
            }
            else
            {
               self.rsvpDate = dateFromString(value, @"yyyy-MM-dd'T'HH:mm:ssz");
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

