#!/usr/bin/env python

from setuptools import setup
from os.path import expanduser

if __name__ == '__main__':
    setup(
        name='pybuilder-completions',
        version='0.1',
        description='''shell completions for pybuilder''',
        long_description='''shell completions for pybuilder
currently supported:
- fish shell v2
''',
        author="PyBuilder Team",
        author_email="max@riehl.io, marcel.wolf@me.com",
        license='MIT',
        url='https://github.com/pybuilder/pybuilder-completions',
        data_files=[(expanduser('~/.config/fish/completions'), ['pyb.fish'])],
        install_requires=["pybuilder"],
        zip_safe=True
    )
