# UI 
* Shiny uses the function fluidPage to create a display that automatically adjusts to the dimensions of your user’s browser window. You lay out the user interface of your app by placing elements in the fluidPage function.

	* titlePanel and sidebarLayout are the two most popular elements to add to fluidPage
	* sidebarLayout always takes two arguments:
		* sidebarPanel 
		* mainPanel 
* The img function looks for your image file in a specific place. Your file must be in a folder named www in the same directory as the app.R script.		

* Widget is a web element that your users can interact with. Widgets provide a way for your users to send messages to the Shiny app