This project contains a simple code setup of Three buttons which are populated on a ViewController. The data related to button color is populated via Model and intelligence of setup is written in ViewController. The tapping action on button shows the last tapped button. The code adheres to MVC Design Pattern as per structural conformance where ViewController acts as controller whereas also having the view instance on it

The model instance is loosely coupled to viewcontroller to achieve Dependency injection on Testcases. Any changes in Viewcontroller will break the test cases.

As the ViewController is controlling the UI as well has the intelligence it ends up tight coupling of view to Controller and also leads to huge boiler plate code on viewcontroller as new journey comes into the play.

To Avoid the problem of tight coupling of view and controller and to enable testability of both as individual entities we may explore MVP or MVVM
