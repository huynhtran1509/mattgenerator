# mattgenerator, a fork of [mogenerator](https://github.com/rentzsch/mogenerator)

Implement json export and import functionality based on userInfo annotations in your Core Data file. 

#Dependencies

If you are using NSDate fields, mattgenerator expects two external block methods to be provided with the following signatures, or you will see linker errors:

* NSDate* (^dateFromString)(NSString* dateString, NSString* format) = ^NSDate* (NSString* dateString, NSString* format);
* NSString* (^stringFromDate)(NSDate* date, NSString* format) = ^NSString* (NSDate* date, NSString* format);

Sample implementations are provied here:
https://github.com/willowtreeapps/mattgenerator/tree/master/MattGeneratorExample/MattGeneratorExample/Dependencies

# Annotations

The annotations follow conventions from MagicalRecord+Import. Here is a list of userInfo properties that are used:

* Entity userInfo
  * *jsonOptions* - comma sepearted list of options
    * import - generates code for the following functions for each class
      * createFromJSON:inContext:
      * createFromJSONArray:inContext:
      * updateFromJSON:inContext:
    * "export"
      * generates code for jsonExport function
  * *relatedByAttribute*
      * specifies an attribute name. when importing a new json record, lookup if there is an existing object in CoreData that has the same value for this attribute as the record being imported.

* Attribute userInfo
  * *notInJSONExport* - if present, exclude this attribute from being exported by the jsonExport function
  * *notInJSONImport* - if present, exclude this attribute from being import by the updateFromJSON function
  * *dateFormat* - for Date type attributes specifies a format to convert string to NSDate, if not specified uses the format "yyyy-MM-dd'T'HH:mm:ssz"
  * *mappedKeyName* - specifies an alternate json field name to import from or expor to. Useful for cases where json fields use names like 'id' or 'description' that are problematic in obj-c

* Relantionship userInfo
  * *mappedKeyName* - specifies an alternate json field name for an array that is imported for a relationship 

For more info visit the [project's pretty homepage](http://rentzsch.github.com/mogenerator)
or [mogenerator](https://github.com/rentzsch/mogenerator).

