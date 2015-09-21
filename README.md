# TestAccessibilityImageRegion

watchOS 2 bug: accessibility image regions on a group

The documentation says, "Use an accessibility image region object in conjunction with any interface object that displays an image, **either as part of its foreground or background content**."

So I would expect accessibility image regions to work correctly on a group with a background image. However, accessibility image regions on groups do not read their label aloud when VoiceOver is turned on. Here are screenshots and descriptions of the results of tapping on each quadrant of the screen in this app:

![accessibility image regions](http://i.imgur.com/Zo5TRaH.png)
