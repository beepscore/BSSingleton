#Purpose:
BSSingleton is a Cocoa iOS universal app to practice using singletons.

#References:

<http://stackoverflow.com/questions/2199106/thread-safe-instantiation-of-a-singleton>

Mike Ash Friday Q&A 2009-10-02: Care and Feeding of Singletons
<http://www.mikeash.com/pyblog/friday-qa-2009-10-02-care-and-feeding-of-singletons.html>

<http://cocoasamurai.blogspot.com/2011/04/singletons-your-doing-them-wrong.html>

<http://stackoverflow.com/questions/137975/what-is-so-bad-about-singletons>

This post by Graham Lee and the comment by Paul Goracke talk about using singletons/shared instances in ways that are easier to unit test.
<http://blog.securemacprogramming.com/2011/02/on-singletons/>

---
##Avoiding making more than one of a "singleton" by overriding allocWithZone
<http://www.duckrowing.com/2011/11/09/using-the-singleton-pattern-in-objective-c-part-2>

<https://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/CocoaFundamentals/CocoaObjects/CocoaObjects.html>

Buck and Yacktman Cocoa Design Patterns 2010

---
#Results:

##Using singletons
Cocoa uses singletons such as the app delegate.
Many people recommend avoiding singletons wherever possible.

Defining a class method +(MySingleton *)sharedMySingleton doesn't prevent someone from making another instance by calling alloc init.
You can eliminate that possibility by overriding allocWithZone.
Most people don't bother with overriding.

---
##Unit testing with singletons
Singletons can make unit testing more difficult.
You can make your objects and methods more flexible by adding a property or method parameter to hold a reference to a singleton. 
Usually the app sets the object's property or the method's argument to the desired singleton.
For unit testing, you can define a mock class and instantiate a mock object (Graham Lee uses the term "fake") instead of the singleton. 
Then in the unit tests you can set the object you are testing to use the mock object in place of the singleton.
