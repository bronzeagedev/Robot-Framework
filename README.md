# robot-framework

This is a robot framework test suite I developed during some courses I did. 

# Running single test

robot -N "String for name" -d results -t "Test Case Name" tests/"directory test is in"

robot -N "String for name" -d results -i "tag" tests

-t: might need to be more explicit with your script path if you have duplicate test names. Resulting log is cleaner. 

-i: Faster and easier to specify and run, but downside is more cluttered log.








































