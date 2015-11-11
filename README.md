Meter
-----
This is a small exercise with React that shows a meter with data.

![Meter](https://raw.githubusercontent.com/muhanad40/Meter/master/screenshot.png)

Future improvements
-------------------
Here is a list of improvements I would make if I had more time on this:

- Refactor: Spend more time refactoring methods in `app/meterLogic.coffee`
- Refactor: Move the methods in `app/meterLogic.coffee` into the DataStore
- Display a loading animation and fade out meter slightly as the data is bring fetched from the server
- Disable the "Refresh" button temporarily when it's clicked
- Correct the pointer icon so that rotation point can be corrected
- Animate the  main value counting from the minimum to the target value
- Fix: refresh request works on the second attempt. Needs more investigation
- The CHF currency is large and needs styling to change without affecting the design. Possibly make it smaller in size

**NOTE:** Tested with Node v0.12.5

After you clone the repository, follow these steps:

Project setup
-------------
```bash
cd Meter
npm install
```

Running the app:
----------------
```bash
npm run bundle
open ./index.html
```

Running the unit tests:
-----------------------
```bash
npm run test
open ./test/index.html
```
