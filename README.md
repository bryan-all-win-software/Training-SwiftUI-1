# Property wrappers
- State: Value can be changed in view hierarchy. Must be private to avoid conflicts with memory managment.
- Binding: To create a two-way connection a property that stores data (State). It is like a bridge to reference a State property from other view.
- ObservalbeObject: Class can announce when changes are happening between its properties. Instances of this class in SwiftUI views will update reacting this changes.
- Published: Variable automatically announce when change occurs.
- StateObject: Reference type inside your SwiftUI view to represent an **ObservableObject**. Instance won't die when view updates.
- ObservedObject: As previous one but this instance will die when view updates.

# Files


https://github.com/user-attachments/assets/a65fd923-afc4-42ef-a878-316abed17c3e

