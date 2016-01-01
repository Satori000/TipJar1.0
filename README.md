# Pre-work - TipJar

TipJar is a tip calculator application for iOS.

Submitted by: Shakeeb Majid

Time spent: 5 hours spent in total

## User Stories

The following **required** functionality is complete:
* [✓] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [✓] Settings page to change the default tip percentage.
* [ ] UI animations
* [✓] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [✓] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/uH7H3pY.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

While trying to create the default settings percentages I had to make sure that the default would not reset the currently selected percentage when the default hasn't been changed and last in between individual app openings. Also had to work out the bug relating to the outdated Objective-C conversion also the views would not be placed proportionally in the simulator as it was placed in the view controller in the storyboard during development. Other than that it was smooth sailing, very clear tutorial! (Will likely release a better submission soon)

## License

    Copyright [2015] [Shakeeb Majid]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
