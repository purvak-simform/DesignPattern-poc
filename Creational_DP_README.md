# 1. Builder Pattern

## Definition: 
  *This pattern is often called as **Adapter**. The pattern’s main purpose is to provide a simple way of returning a given class or instance depending on the case*
With the help of the Builder pattern, we can construct complex objects without much effort. As we call it an Adapter, whose main purpose is to untangle the complexity of the object instantiation process.

Whenever you are dealing with a highly customized product and its complexity the Builder pattern helps to clear the clutter to create the basic concept. Because of it, one can have a fundamental understanding of complex construction.

### Employing Builder pattern
When you are creating new objects and you need many permutations of that particular feature.
When you are focused on the process of creating objects and how to assemble them, rather than being dependent on just constructors.

Real world example:- 
1. the manufacture of machinery. where production stage is different
    Assemble the body,
    Install the engine,
    Install the wheels,
    Install the interior,
    Add the electronics etc.
2. Construction of House.


Other Creational Design patterns are 

1. **Factory Method Pattern:**
        
    The Factory Method pattern is widely used in Rails for object creation. It provides an interface for creating objects, but allows subclasses to decide which class to instantiate. In Rails, the most commonly used implementation of this pattern is the Factory Bot gem. Factory Bot helps create test data using factories, allowing you to define and customize object creation for testing purposes.

2. **Singleton Pattern:**
    
    The Singleton pattern ensures that a class has only one instance throughout the application and provides global access to that instance. In Rails, the Singleton pattern can be useful for managing shared resources or maintaining global state. The Rails framework itself utilizes the Singleton pattern in various components, such as the Application Controller and ActiveRecord's connection pool.
                                               

