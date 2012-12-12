Phantom-Jasmine
=====================

Phantom-Jasmine is a simple set of two scripts for running your Jasmine Tests via Phantom.js (http://www.phantomjs.org/).
The first script lib/console-runner.js is a plugin to Jasmine that outputs test results (with ansi color codes) via console.log (included with a script tag inside TestRunner.html).
The second script lib/run_jasmine_test.coffee takes an html file as it's first and only argument and then executes any Jasmine tests
that file loads. See below for more detail.


Installation
-------------------

Assuming you have PhantomJs setup and installed...

    sudo npm install phantom-jasmine -g


Running Tests
-------------------

    phantom-jasmine examples/TestRunner.html

On some running OS X you might have to pass in the full url, ex:

    phantom-jasmine file://localhost/Users/bob/phantom-jasmine/examples/TestRunner.html 


If everything works you should see output like this in your terminal:

    Util : should fail for the example
    Error: Expected false to be truthy.

    Finished
    -----------------
    3 specs, 1 failure in 0.024s.
    

To run your own tests with Phantom-Jasmine just look at TestRunner.html and modify/copy the script tags accordingly.
