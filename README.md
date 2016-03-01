# LiveRendering_IB_iOS
This is a sample project to test and understand IBDesignable and IBInspectable modifiers that enable live-rendering in the InterfaceBuilder. 

1) We can have any property of a view exposed to IB for tweaking and for rendering the view based on the tweaks in IB and during run-time. <br/>
2) We can write code and have the "code" render the changes real-time in the IB. (super cool, if you ask me, no one around the web seems to be as excited by this point as the first, sigh!) </br>

The first ensures that we needn't set a lot of values through code and the second ensures that we needn't run the app and navigate to the required screen to see what happens with the view. This power is immense since we are able to manipulate these with custom logic (not just simple getters and setters, mind you) and XCode still builds it and renders in real-time in IB. 

A detailed explanation can be found at my blog - http://gtlcodes.blogspot.in/2016/03/using-ibdesignable-ibinspectable.html
