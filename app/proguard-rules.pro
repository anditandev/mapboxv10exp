# We'll just display some more statistics about the processed code.
-verbose

# Obfuscate the code of all methods in the class with strength
# set to 'high'.
#-obfuscatecode,high class sg.gov.tech.onemobileapp.MainApplication

# If necessary, we can specify the methods to obfuscate.
#-obfuscatecode,high class com.example.HelloWorldActivity {
#     *** onCreate(...);
#}

# Alternatively, we can obfuscate all classes in a package.

# Alternatively, we can use different strength settings.
# If no strength is specified, 'low' will be used instead.
#-obfuscatecode,low class com.example.HelloWorldActivity
-optimizations library/gson

# If you encounter problems in your project, you can let DexGuard instrument
# your code, so the app prints out configuration suggestions at run-time, in
# the logcat:
#
#-addconfigurationdebugging


# Your own configuration

# Otherwise, you can try to narrow down the issue by disabling some processing
# steps:
#
#-dontshrink
#-dontoptimize
#-dontobfuscate


# You can also check if the problem can be solved by keeping additional
# code and/or resources:
#

# handle ZipAlign issue
# -dontcompress res/**
# -zipalign 4

# These are really crude settings that you shouldn't use for building
# actual releases, but it's easier to start from a working configuration,
# which you can then refine.
