#!/usr/bin/env python

from setuptools import setup
from os.path import expanduser

if __name__ == '__main__':
    setup(
        name='pybuilder-completions',
        version='0.4',
        description='''shell and zsh completions for pybuilder''',
        long_description='''shell and zsh completions for pybuilder
currently supported:
- fish shell v2
- zsh
''',
        author="PyBuilder Team",
        author_email="max@riehl.io, marcel.wolf@me.com",
        license='MIT',
        url='https://github.com/pybuilder/pybuilder-completions',
        data_files=[
            (expanduser('~/.config/fish/completions'), ['pyb.fish']),
            ("/usr/share/zsh/functions/Completion/Linux", ['_pyb'])
        ],
        zip_safe=True
    )
