## lcov-action

![Build and Test](https://github.com/danielealbano/lcov-action/workflows/Build%20and%20Test/badge.svg)

This action let you to run lcov with the needed parameters

## Inputs

### `gcov_tool`

**Required** Path to the gcov binary, by default /usr/bin/gcov.

It's possible to use /usr/bin/gcov-7 and  /usr/bin/gcov-8.

### `params`

**Required** Parameters to pass to lcov, no default.

## Outputs

No outputs.

## Example usage

gcov 7 (version 7.5.0)
```yaml
uses: daalbano/lcov-action@v1.0.0
with:
  gcov_tool: /usr/bin/gcov-7
  params: -c --directory . --output-file coverage.info
```

gcov 8 (version 8.4.0)
```yaml
uses: daalbano/lcov-action@v1.0.0
with:
  gcov_tool: /usr/bin/gcov-8
  params: -c --directory . --output-file coverage.info
```

gcov 9 (version 9.3.0) - default
```yaml
uses: daalbano/lcov-action@v1.0.0
with:
  params: -c --directory . --output-file coverage.info
```

## Author

Copyright (C) 2020-2021 Daniele Salvatore Albano

## License 

BSD 2-Clause License
