% Import argv library
addpath(pwd + "/libs/argv");

% Get ac (argc) and av (argv), like in the C language
[ac, av] = argv(pwd);

ac
av

% Your code starts here...
fprintf("Hello, world!\n");
