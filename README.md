SudokuBlocks.app from one year ago will not run on macOS Sierra.  Aggravating, but there it is.  So I decided to upgrade the app to Swift3.  

This was a bit of a challenge.  The biggest thing is that automatic code migration didn't work well, and also Xcode was complaining about some project settings.  So I made a brand new project, set up new xib files, and then added the old files swift to it.  I did this in two phases, where in the first one there was just put enough of the code to load a puzzle and draw it on the screen.

Then I tried to build it and fixed the errors one by one.  I probably fixed 50 errors in phase 1 and 100 in phase 2.  Xcode was really good at telling me what was wrong and sometimes making the fix as simple as a double-click.

I ran into a few additional bugs where the view would not update properly.  I don't have any known bugs at present.