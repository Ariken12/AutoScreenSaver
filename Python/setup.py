import cx_Freeze

cx_Freeze.setup(
    name = "Script",
    version = "0.1",
    description = "Script",
    executables = [cx_Freeze.Executable("Script.py")]

)
