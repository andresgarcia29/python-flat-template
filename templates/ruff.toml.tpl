# Same as Black.
line-length = ${line_length}
indent-width = ${indent_width}

# Assume Python 3.8
target-version = "${target_version}"

[format]
# Like Black, use double quotes for strings.
quote-style = "${quote_style}"

# Like Black, indent with spaces, rather than tabs.
indent-style = "${indent_style}"

# Like Black, respect magic trailing commas.
skip-magic-trailing-comma = ${skip_magic_trailing_comma}

# Like Black, automatically detect the appropriate line ending.
line-ending = "${line_ending}"

# Enable auto-formatting of code examples in docstrings. Markdown,
# reStructuredText code/literal blocks and doctests are all supported.
#
# This is currently disabled by default, but it is planned for this
# to be opt-out in the future.
docstring-code-format = ${docstring_code_format}

# Set the line length limit used when formatting code snippets in
# docstrings.
#
# This only has an effect when the `docstring-code-format` setting is
# enabled.
docstring-code-line-length = "${docstring_code_line_length}"

[lint]
# Add "Q" to the list of enabled codes.
select = ${lint_select}

# Allow fix for all enabled rules (when `--fix`) is provided.
fixable = ${lint_fixable}
unfixable = ${lint_unfixable}

# Allow unused variables when underscore-prefixed.
dummy-variable-rgx = "${dummy_variable_rgx}"

[lint.flake8-quotes]
docstring-quotes = "${docstring_quotes}"
