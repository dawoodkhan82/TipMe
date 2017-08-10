# Pre-work - *TipMe*

**TipMe** is a tip calculator application for iOS.

Submitted by: **Dawood Khan**

Time spent: **15-16** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] UISlider for more exact tip percentages.
- [X] Done button on keyboard to dismiss keyboard.
- [X] Pressing save button also takes user back to root view controller.
- [X] Launch Screen.
- [X] App icons for all sizes.
- [X] Autolayout constraints for storyboard UI elements.



## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<a href="http://imgur.com/s6k6mdL"><img src="http://i.imgur.com/s6k6mdL.gif" title="source: imgur.com" /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** The iOS app development platform is overall a very enjoyable platform to use. It allows me to be creative with the design, which I realized I kept spending more and more time on. The simulator allows the developer to quickly test and use their app and debug any errors on the spot. Already having experience with the iOS app development platform, I feel as if I had overcome a lot of the hurdles as a beginner. The autolayout via the storyboard is a part of the platform that I still see myself going into trial and error mode, and something I hope to improve on.

I would describe outlets as variables or pointers to UI objects such as text fields, labels, and more. Actions are like functions and the code within these functions runs when a specific event occurs with the UI object, such as a button being pressed, or a value being changed in a text field. Reviewing the source code and documentation, an outlet is defined as a property of an object that references another object. An outlet is declared as a weak reference in order to prevent strong reference cycles or otherwise known as memory leaks. The connections between the objects and their outlets are archived in nib files, and when the nib file is loaded the connection is unarchived and loaded. The connections between the containing object and its outlets are reestablished every time the containing object is unarchived from its nib file. Since it is a property, an outlet becomes part of an object’s encapsulated data and is backed by an instance variable. IBOutlet and IBActions are tags applied to property declarations so the Interface Builder can recognize them. Since they are tags, IBAction essentially works the same way under the hood, except the function tagged as an IBAction is called.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** ARC is basically a way to count how many strong references there are to an instance, and when there are 0 strong references to an instance it will be deallocated from memory. Firstly, a closure can be described as a portion of code that creates its own scope or temporary class. The closure also creates a strong reference to all the objects it needs to run. So, because closures create strong references, if a developer is creating a subview from a viewController and that subview calls a closure, and that closure needs a reference to 'self' in order to execute, then a strong reference cycle occurs.That is one example of how a strong reference cycle for closures can occur. I also used this article as a resource [Understanding memory leaks in closures] (https://medium.com/@streem/understanding-memory-leaks-in-closures-48207214cba).


## License

    Copyright [2017] [Dawood Khan]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
