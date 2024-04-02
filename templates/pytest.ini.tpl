[pytest]
testpaths = ${testpaths}
python_files = ${python_files}
python_functions = ${python_functions}
markers =
    slow: mark tests as slow (deselect with '-m "not slow"')
    integration: mark tests as integration tests
log_cli_level = ${log_cli_level}
filterwarnings =
    error::DeprecationWarning
