## lcov-action

![Build and Test](https://github.com/danielealbano/lcov-action/workflows/Build%20and%20Test/badge.svg)

This action let you to run lcov with the needed parameters

## Inputs

### `gcov_tool`

**Required** Path to the gcov binary, by default `/usr/bin/gcov`.

It's possible to use `/usr/bin/gcov-7` and `/usr/bin/gcov-8`.

### `remove_patterns`

**Required** Comma separated list of simple name-matching patterns to remove from the build, can be empty.

### `output_lcov_info`

**Required** Output path for the lcov info, by default `coverage.info`

### `build_dir`

**Required** Build directory (see lcov man for option -d)

### `base_dir`

**Required** Base directory (see lcov man for option -b)

## Outputs

No outputs.

## Example usage

gcov 7 (version 7.5.0)
```yaml
uses: danielealbano/lcov-action@v3
with:
  gcov_tool: /usr/bin/gcov-7
```

gcov 8 (version 8.4.0)
```yaml
uses: danielealbano/lcov-action@v3
with:
  gcov_tool: /usr/bin/gcov-8
```

gcov 9 (version 9.3.0) - default
```yaml
uses: danielealbano/lcov-action@v3
```

Remove the 3rdparties and benchmarks subfolder (and any path that would contain these two) from the code coverage
```yaml
uses: danielealbano/lcov-action@v3
with:
  remove_patterns: 3rdparties,benchmarks
```

## Integration with codecov

The lcov-action can be leverage to easily integrated [codecov](https://about.codecov.io/) and their [action](https://github.com/marketplace/actions/codecov) into any CI pipeline.

When running lcov-action with the default working directory and coverage output file, the `coverage.info` will be created in `${{github.workspace}}`, so the only step required is to pass the full path to the codecov action using `files: ${{github.workspace}}/coverage.info`.

Here an example taken from [cachegrand](https://github.com/danielealbano/cachegrand) main CI workflow ( https://github.com/danielealbano/cachegrand/blob/main/.github/workflows/build_and_test.yml )

```yaml
- name: Tests - Unit Tests
  working-directory: ${{github.workspace}}/build
  shell: bash
  run: cd tests/unit_tests && sudo ./cachegrand-tests --order lex

- name: Code Coverage - Generation
  uses: danielealbano/lcov-action@v3
  with:
    gcov_path: /usr/bin/gcov-9
    remove_patterns: 3rdparty,tests

- uses: codecov/codecov-action@v3
  with:
    files: ${{github.workspace}}/coverage.info
    flags: unittests # optional
    name: cachegrand-server
    fail_ci_if_error: false
    verbose: false
```

## Author

Copyright (C) 2020-2021 Daniele Salvatore Albano

## License 

BSD 2-Clause License
