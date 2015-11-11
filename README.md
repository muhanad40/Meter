Meter
-----
This is a small exercise with React that shows a meter with data.

![Meter](https://raw.githubusercontent.com/muhanad40/Meter/master/screenshot.png)

Future improvements
-------------------
Here is a list of improvements I would make if I had more time on this:

- Display a loading animation and fade out meter slightly as the data is bring fetched from the server
- Disable the "Refresh" button temporarily when it's clicked
- Correct the pointer icon so that rotation point can be corrected
- Animate the  main value counting from the minimum to the target value
- Fix: refresh request works on the second attempt. Needs more investigation
- The CHF currency is large and needs styling to change without affecting the design. Possibly make it smaller in size

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
