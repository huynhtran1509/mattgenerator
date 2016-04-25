import Cocoa
import CoreData

struct CoreDataStore {
    let moc: NSManagedObjectContext

    init() {
        let modelURL = NSURL(fileURLWithPath: "test.mom")
        let model = NSManagedObjectModel(contentsOfURL: modelURL)
        let psc = NSPersistentStoreCoordinator(managedObjectModel: model!)

        do {
            try psc.addPersistentStoreWithType(NSInMemoryStoreType, configuration: nil, URL: nil, options: nil)
        } catch {
          assertionFailure("Can't bring up PSC")
        }

        moc = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        moc.persistentStoreCoordinator = psc
    }
}

let dataStore = CoreDataStore()
let moc = dataStore.moc

let homer = ParentMO(managedObjectContext: moc)!
homer.humanName = "homer"
homer.parentName = homer.humanName
homer.ivar = 1.0
homer.gender = NSNumber(int: Gender.Male.rawValue)

let marge = ParentMO(managedObjectContext: moc)!
marge.humanName = "marge"
marge.parentName = marge.humanName
marge.ivar = 1.0
marge.gender = NSNumber(int: Gender.Female.rawValue)

assert(homer.children.count == 0)
assert(marge.children.count == 0)

let bart = ChildMO(managedObjectContext: moc)!
bart.humanName = "bart"
bart.childName = bart.humanName
bart.ivar = 1.0
bart.type = 64

let lisa = ChildMO(managedObjectContext: moc)!
lisa.humanName = "lisa"
lisa.childName = lisa.humanName
lisa.ivar = 1.0

do {
    try moc.save()
    assert(Gender(rawValue: homer.gender!.intValue) == .Male)
    assert(Gender(rawValue: marge.gender!.intValue) == .Female)
    assert(Gender(rawValue: bart.gender!.intValue) == .Undefined)
    assert(Gender(rawValue: homer.gender!.intValue)!.toString() == "Male")

} catch {
    assertionFailure("Failed to save")
}

print("Success")
