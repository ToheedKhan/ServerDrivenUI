
# Non server driven UI

The client is going to make a request to the server.
The server is going to give some sort of response back to the client.
Now, the important part of it here is that what does that response looks like?
The third one is going to be simply sending the client the data that the client needs to display.
In this case, it is name, image, URL and description.
Once we get that data, then data will eventually be displayed onto the client.
The image may be represented by an async image view or some sort of image view.
The name will be represented by some sort of a text as well as a description.
So in this case, the server is actually sending you the data.
And that data is presented on the client.
But the client is still responsible for coding up all the interface, meaning all the logic of consuming
data and also creating those controls.
Structuring those controls is still on the client side.
So client is still responsible for creating the interface based on the data that it receives.
But if I want to put the image of the end meaning at the bottom and the name and the description on
the top, I have to update the client.
I have to send another version to the App Store and the user has to download the different version.

# ServerDrivenUI
The response that you're going to receive from the server in its server driven UI will not only contain the data, but it will also contain that.
What component views that you want to display.
And that's the important part because the server is dictating to the client that how and what components it needs to render.
This means that you can change the order of components based on server response.
And that's the power of server driven UI, because your server is not only sending the data, but it is also sending which components you want to display.


The server simply changed the structure of the JSON sent to the client and the client never had to be updated. It was instantly updated and it was instantly shown that now the featured image should not be on the top, but it should be at the bottom.
So you don't really have to even push a new version of the App Store to make that change.
You can simply change the response sent from the server and that will allow the client, meaning your iPhone app, to be different, to be change.

## Benefits
###One of the biggest benefits of server driven UI is the ability to change the user interface without going through the app review. You can simply change the JSON that you're returning and send the whole interface.
It's controlled by the JSON.
You can simply change the user interface provided that the components that you are targeting.
In your JSON already exist in the binary that is available on the App Store.
Now, you can also change the structure, change the ordering of the actual interface.
If you want the image to be at the bottom, you can put a featured image at the bottom.
If you want the rating to be on the top, you put the ratings control or the component on the top.
That is great.
And that allows you to change the interface instantly.

### Another great benefit of server driven UI is that you can instantly update on multiple platforms. 
So if you are targeting your app for iOS, Android and Web and all of them are reading from the same JSON, all of them are using server driven UI.
Then once you change the JSON, it will automatically update on all the platforms and all the platforms will be sync with each other and they will reflect the changes.

A lot of companies are doing it. Airbnb, you have Uber and a lot of different Spotify.

### And the other benefit that you get is you can easily perform AB testing because AB testing, you can simply go ahead and change your structure.
JSON

And with the actions that you will later on, you can completely change the navigation.
Maybe you are currently saying that, hey, we will go from point A to point B, but if you want to
go from point A to point V, you can do that because all the navigation is also controlled by the server, by the JSON. And now you are displaying a carousel instead of a images and you can be easily a B test without having to redeploy your app.

### You can also control the view presentations. Maybe currently you are displaying a particular view in a model in a sheet, but you're like, hey, I want to displayed in a push navigation.
So you can also do that. And that is all the great benefits of server driven UI.

# Core Architecture

We get JSON response from server that will be mapped to the UI Models.
UI model we will create in our client (iPhone application)

Those UI models which will be a representation of the JSON that you received from the server, will be passed to
components based on the type of the UI model and we will create a particular component. And in the end, the component will be responsible for rendering a particular view.
So if you're saying that, hey, I want to get a carousel, then we will map it to a carousel UI model
and create a carousel component, the carousel component, the live component, the featured image component,
the rating component, whatever component that you are trying to render, will eventually render the
view.



## Imp links

# JSONView extension
https://chrome.google.com/webstore/detail/jsonview/gmegofmjomhknnokphhckolhcffdaihd/related
