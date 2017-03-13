# Pre-work - TipCalculator

TipCalculator is a tip calculator application for iOS.

Submitted by: Janvier Wijaya

Time spent: 6 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user does not have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] User cannot enter negative or blank tip percentage in the Settings page. Doing so will not set the user defaults and set the tip percentage display back to the previous value.
- [x] Tip and total amount are automatically updated if the selected tip percentage has changed after going back from the Settings page.

## Video Walkthrough 

Here is a walkthrough of implemented user stories:

<img src='http://imgur.com/a/aEpEk' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

- Had a trouble getting used to the optionals.
- Had a problem in debugging why the properties of struct being passed from TipCalculator to Settings page did not get changed after getting back from the Settings page.

## License

    Copyright 2017 Janvier Wijaya

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
