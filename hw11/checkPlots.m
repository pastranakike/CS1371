%% checkPlots compares the plot output of student and solution functions for equivalance
%
%   checkPlots(funcName, funcInputs ... )
%
%   Inputs:
%       (char) funcName: The name of the function you wish to check, as a
%           string (do NOT include '_soln')
%       (variable) funcInputs: The remaining inputs to this function are the
%           inputs that you would normally pass into the function that you
%           are checking
%   Outputs: None
%   Displayed: (Figure) showing student and solution plots  
%              (Command Window Text) Message if the subplots match or not.
%
%
%   Example:
%       If you have a function called "testFunc" and the following test case:
%
%           testFunc(30, true, {'cats', 'dogs'})
%
%       Then to check the plot produced by "testFunc" against the solution
%       function "testFunc_soln" for this test case you would run:
%
%           checkPlots('testFunc', 30, true, {'cats', 'dogs'})
%
%
%   Notes:
%       Some things to watch out for that the plot checker occasionally has
%       difficulty identifying:
%
%       1.  Incorrect colors interfering with data comparison
%       2.  Incorrect axis ranges interfering with data comparison
%       3.  The order in which you plot overlapping elements interfering with
%           color comparison
%       4.  Small rounding errors causing axis ranges to be incorrect
%
%   Disclaimer:
%       This is the first semester we have used this function, so you will
%       likely come across cases where it does not work properly. In these
%       situations, you can run the solution function, then run your function
%       and look at the two plots. If you cannot identify ANY differences
%       between the two plots, then you will get full credit for your
%       submission. However, if you can see ANY differences between the plots,
%       your function output does not match the solution.
%
%       To make this function better in the future, if you do come across a
%       false negative or false positive, we ask that you email your solution
%       code as an attachment to smanivasagam3@gatech.edu with the subject line
%       "PLOT_CHECK_TEST_CASE". You can send multiple functions in one email if
%       you encounter a problem for multiple functions. Sending your code is
%       completely voluntary, but the more code we have to test the function on,
%       the better it will be in the future!