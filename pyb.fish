# pybuilder
# auto completion for pybuilder
# Project Options
function completion
complete -c pyb -f -l version --description 'show programs version number and exit'
complete -c pyb -f -a -h --description 'show this help message and exit'
complete -c pyb -f -a -t --description 'List tasks'
complete -c pyb -f -l start-project --description 'Initialize a build descriptor and python project structure.'
complete -c pyb -f -l verbose --description 'Enable verbose output'
complete -c pyb -f -a -D --description '<project directory> Root directory to execute in'
complete -c pyb -f -l project-directory --description '--project-directory=<project directory> Root directory to execute in'
complete -c pyb -f -a -E --description '<environment> Activate the given environment for this build. Can be used multiple times'
complete -c pyb -f -l environment --description '--environment=<environment> Activate the given environment for this build. Can be used multiple times'
complete -c pyb -f -a -P --description '<property>=<value> Set/ override a property value'
# Output Options
complete -c pyb -f -a -X --description 'Print debug messages'
complete -c pyb -f -l debug --description 'Print debug messages'
complete -c pyb -f -a -q --description 'Quiet mode; print only warnings and errors'
complete -c pyb -f -l quiet --description 'Quiet mode; print only warnings and errors'
complete -c pyb -f -a -Q --description 'Very quiet mode; print only errors'
complete -c pyb -f -l very-quiet --description 'Very quiet mode; print only errors'
complete -c pyb -f -a -C --description 'Disable colored output'
complete -c pyb -f -l no-color --description 'Disable colored output'
complete -c pyb -f -a -Qt --description 'generates Dynamicly tasks'
end
# Dynamicly generated completion of pybuilder tasks

function pybuilder
    set binary (command which pyb); or set binary (echo "")
    test -n $binary; and command pyb -Qt; completion
end

function task_generation
    set tasks (pybuilder | tr ' ' \n)
    set max (count $tasks)
        for number in (seq $max | tr ' ' \n)
            echo $tasks[$number]
        end
end
complete -c pyb -f -a "(task_generation)" --description 'check task description with pyb -t'
