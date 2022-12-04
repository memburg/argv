function [ac, av] = argv(sourcePath)

    try
        fullPath = sourcePath + "/arguments.json";
        json = jsondecode(fileread(fullPath));
        ac = size(json, 1);
        av = string(json);
    catch
        ac = 0;
        av = [];
    end

end
