Phantom-Jasmine
=====================

Phantom-Jasmine is a simple set of two scripts for running your Jasmine Tests via Phantom.js (http://www.phantomjs.org/).
The first script lib/console-runner.js is a plugin to Jasmine that outputs test results (with ansi color codes) via console.log (included with a script tag inside TestRunner.html).
The second script lib/run_jasmine_test.coffee takes an html file as it's first and only argument and then executes any Jasmine tests
that file loads. See below for more detail.


Running Tests
-------------------
Assuming you have PhantomJs setup and installed...

Clone this repository, cd into it and run:

    phantomjs lib/run_jasmine_test.coffee examples/TestRunner.html


On some running OS X you might have to pass in the full url, ex:

    phantomjs lib/run_jasmine_test.coffee file://localhost/Users/bob/phantom-jasmine/examples/TestRunner.html 


If everything works you should see output like this in your terminal:

    Util : should fail for the example
    Error: Expected false to be truthy.

    Finished
    -----------------
    3 specs, 1 failure in 0.024s.
    

To run your own tests with Phantom-Jasmine just look at TestRunner.html and modify/copy the script tags accordingly.


