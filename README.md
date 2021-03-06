# TestAccessibilityImageRegion

watchOS 2: accessibility image region labels don't work on a group (Bug 22786253)

The documentation says, "Use an accessibility image region object in conjunction with any interface object that displays an image, **either as part of its foreground or background content**."

So I would expect accessibility image regions to work correctly on a group with a background image. However, accessibility image regions on groups do not read their label aloud when VoiceOver is turned on. Here are screenshots and descriptions of the results of tapping on each quadrant of the screen in this app:

![accessibility image regions](http://i.imgur.com/Zo5TRaH.png)

To test, turn on VoiceOver on an Apple Watch device. Then run this app on that device.
