# Quick Task Inbox

Detects taps, double-taps, long-presses and drags on any widget (this is also in your class sheet)

## About the app
Task list, each task is a card, tap a task to see its details

## How to run
1. Clone the repo: `git clone https://github.com/murinziben/gesture-detector-demo.git`
2. Go into the folder: `cd gesture-detector-demo`
3. Get the packages: `flutter pub get`
4. Run the app: `flutter run`

## Three attributes

**1. onTap**
- Default: null, so tapping a task card did nothing.
- What I changed: I gave onTap a function that calls showDialog.
- Effect on screen:a box pops up in the middle with the task's title, due date and priority, and a Close button.
- Why a developer uses it:so users can open an item by tapping it directly, without a separate button on every row.

**2. onDoubleTap**
- Default:null, so double-tapping a task did nothing.
- What I changed:I gave onDoubleTap a function that switches isStarred between true and false, with setState so the screen redraws.
- Effect on screen: as a quick shortcut for an action like liking or marking something important, just like double-tapping a photo on Instagram.

**3. onLongPress**
- Default: null, so holding a task did nothing.
- What I changed: I gave onLongPress a function that removes that task from the list, with setState so the screen updates.
- Effect on screen: when I hold a task card, it disappears from the list.
- Why a developer uses it: for secondary actions that you don't want triggered by accident, like selecting or deleting an email in Gmail.

## Screenshot
![Final UI](https://drive.google.com/drive/folders/11fA7oY_bUorAwrGLOXInQMdeXSkcBLax?usp=sharing)

## Credits
everything that was done here i did it on my own put i did same reseach on google
