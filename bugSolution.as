function handleComplete(event:Event):void {
  var loader:Loader = event.target as Loader;
  var image:Image = loader.content as Image;

  //Proper error handling
  if (image != null) {
    trace(image.width);
  } else {
    trace("Image failed to load.");
    // Add additional error handling, such as displaying an error message or using a default image.
  }
}

//Further improvement: Add an event listener for the IOErrorEvent to handle the image loading failure more gracefully.
loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, handleIOError);

function handleIOError(event:IOErrorEvent):void{
  trace("Error loading image: "+ event.text);
  // Handle the error appropriately (display an error message, use a default image, etc.).
}