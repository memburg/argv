% This function reads a JSON file that contains the arguments
% passed when the run.sh file was called.
function av = argv(sourcePath)

    try
        % Read the file inside a try... catch block, in case
        % the arguments.json file was not correctly generated.
        fullPath = sourcePath + "/arguments.json";
        json = jsondecode(fileread(fullPath));
        av = string(json);
    catch
        % Return a 0 sized array in case the main logic fails.
        av = strings(0);
    end

end
