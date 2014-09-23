# pybuilder
# auto completion for pybuilder
# Project Options
complete -c pyb -l version --description 'show programs version number and exit'
complete -c pyb -a -h --description 'show this help message and exit'
complete -c pyb -a -t --description 'List tasks'
complete -c pyb -l start-project --description 'Initialize a build descriptor and python project structure.'
complete -c pyb -l verbose --description 'Enable verbose output'
complete -c pyb -a -D --description '<project directory> Root directory to execute in'
complete -c pyb -l project-directory --description '--project-directory=<project directory> Root directory to execute in'
complete -c pyb -a -E --description '<environment> Activate the given environment for this build. Can be used multiple times'
complete -c pyb -l environment --description '--environment=<environment> Activate the given environment for this build. Can be used multiple times'
complete -c pyb -a -P --description '<property>=<value> Set/ override a property value'
# Output Options
complete -c pyb -a -X --description 'Print debug messages'
complete -c pyb -l debug --description 'Print debug messages'
complete -c pyb -a -q --description 'Quiet mode; print only warnings and errors'
complete -c pyb -l quiet --description 'Quiet mode; print only warnings and errors'
complete -c pyb -a -Q --description 'Very quiet mode; print only errors'
complete -c pyb -l very-quiet --description 'Very quiet mode; print only errors'
complete -c pyb -a -C --description 'Disable colored output'
complete -c pyb -l no-color --description 'Disable colored output'
complete -c pyb -a -Qt --description 'generates Dynamicly tasks'

# Dynamicly generated completion of pybuilder tasks

function pybuilder
    set binary (command which pyb); or set binary (echo "")
    test -n $binary; and command pyb -Qt
end

function task_generation
    set tasks (pybuilder | tr ' ' \n)
    set max (count $tasks)
        for number in (seq $max | tr ' ' \n)
            echo $tasks[$number]
        end
end
complete -c pyb -a "(task_generation)" --description 'check task description with pyb -t'