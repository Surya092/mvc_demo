This project contains a simple code setup of Three buttons which are populated on a ViewController. The data related to button color is populated via Model and intelligence of setup is written in ViewController. The tapping action on button shows the last tapped button.

The model instance is loosely coupled to viewcontroller to achieve Dependency injection on Testcases. Any changes in Viewcontroller will break the test cases
