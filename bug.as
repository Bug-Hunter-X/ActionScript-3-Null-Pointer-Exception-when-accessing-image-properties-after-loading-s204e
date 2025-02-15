function handleComplete(event:Event):void {
  // Assuming 'event.target' is a Loader
  var loader:Loader = event.target as Loader;
  var image:Image = loader.content as Image;
  
  //This is where the error often occurs.  If the image loading fails,
  // loader.content will be null, and this will throw an error.
  trace(image.width); 
}