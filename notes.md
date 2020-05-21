# Notes
A shiny object has two components. UI and Server. All shiny apps must be called app.R
## UI 
* Shiny uses the function fluidPage to create a display that automatically adjusts to the dimensions of your user’s browser window. You lay out the user interface of your app by placing elements in the fluidPage function.

	* titlePanel and sidebarLayout are the two most popular elements to add to fluidPage
	* sidebarLayout always takes two arguments:
		* sidebarPanel 
		* mainPanel 
* The img function looks for your image file in a specific place. Your file must be in a folder named www in the same directory as the app.R script.		

### Add control widget
* Widget is a web element that your users can interact with. Widgets provide a way for your users to send messages to the Shiny app
* Widget function is added in _sidebarPanel_ or _mainPanel_ in your ui object, this widget should have a name and a label. Although you can recreate it with rows and columns
	* Using the name you can access this widget but does not appear in the UI. The label however appears and is visible to the user
* Syntax = page > row > column. Each page can have multiple rows and each row multiple columns

	fluidPage(
		fluidRow(
			column(...),
			column(...),
				),
		fluidRow(
			column(...),
			column(...),


### Display reactive output
* Reactive output automatically responds when your user toggles a widget
* Placing a function in ui tells Shiny where to display your object
* To tell Shiny how to build the object, we put the object in the server function
* Hence Shiny takes input from __ui__ and builds it in __server__
* The __server__ function builds a list-like object = _output_ that contains all of the code needed to __update/build__ the R objects in your app
	* To this _output_ object you can refer to the name of an R object that was created in the ui
	* Each entry to output should contain the output of one of Shiny’s render functions
* Also there is the _input_ object, this object saves the current values of all of the widgets in your app
* Shiny will automatically make an object reactive if the object uses an input value
* When a user changes a widget, Shiny will rebuild all of the outputs that depend on the widget, using the new value of the widget 
### Use R scripts and data
* Shiny cannot look in other file paths, it will treat all file paths as if they begin in the same directory as the app.R (server.R) file
* The server function is run once each time a user visits the app\
	* and the R expressions inside render functions are run whenever a user change the value of a widget
* To make the app not too heavy
	* Define user specific objects inside server function, but outside of any render calls	
	* Since Shiny will rerun all of the code in a render chunk each time a user changes a widget, you should generally avoid placing code inside a render function that does not need to be there. Doing so will slow down the entire app
	* The other parts like _library_ or _readRDS_ are read only once
	

