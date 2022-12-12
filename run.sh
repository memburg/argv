if [ -f "arguments.json" ] ; then         # Verify if the file exists
    rm "arguments.json"                   # Delete the arguments file at the beginning of the execution
fi

touch arguments.json                      # Create the arguments file if it does not exists
printf %s "[" >> arguments.json           # Insert opening bracket

for a in "$@"                             # Loop through the arguments to get them all
do
    printf %s "\"$a\"," >> arguments.json # Append the argument into the arguments.json file
done

truncate -s-1 arguments.json              # Remove the last comma in the JSON array
printf %s "]" >> arguments.json           # Insert closing brace
matlab -batch "main; exit;"               # Execute main file (MATLAB file)

if [ -f "arguments.json" ] ; then         # Verify if the file exists
    rm "arguments.json"                   # Delete the arguments.json file at the end of the execution
fi