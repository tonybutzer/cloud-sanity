from setuptools import setup

setup (
    name='instance', 
    version='1.0',
    py_modules=['instance',],
    install_requires=[
        'Click',
    ],
    entry_points='''
        [console_scripts]
        instance=instance:cli
    '''
    ,
)
