#Purpose:
BSSingleton is a Cocoa iOS universal app to practice using singletons.

#References:
Mike Ash Friday Q&A 2009-09-18 "One Time Initialization"
<http://www.mikeash.com/pyblog/friday-qa-2009-09-18-intro-to-grand-central-dispatch-part-iv-odds-and-ends.html>

<http://cocoasamurai.blogspot.com/2011/04/singletons-your-doing-them-wrong.html>

<http://stackoverflow.com/questions/137975/what-is-so-bad-about-singletons>
Buck and Yacktman Cocoa Design Patterns 2010

This post by Graham Lee and the comment by Paul Goracke talk about using singletons/shared instances in ways that are easier to unit test.
<http://blog.securemacprogramming.com/2011/02/on-singletons/>

---
##Using singletons
Cocoa uses singletons such as the app delegate.
Many people recommend avoiding singletons wherever possible.
They can make unit testing more difficult.

You can make your objects and methods more flexible by adding a property or method parameter to hold a reference to a singleton. 
Usually the app sets the object's property or the method's argument to the desired singleton.
For unit testing, you can define a mock class and instantiate a mock object (Graham Lee uses the term "fake") instead of the singleton. 
Then in the unit tests you can set the object you are testing to use the mock object in place of the singleton.
