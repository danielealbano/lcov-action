## lcov-action

![Build and Test](https://github.com/danielealbano/lcov-action/workflows/Build%20and%20Test/badge.svg)

This action let you to run lcov with the needed parameters

## Inputs

### `gcov_tool`

**Required** Path to the gcov binary, by default /usr/bin/gcov. /usr/bin/gcov-7 is available as well.

### `params`

**Required** Parameters to pass to lcov, no default.

## Outputs

No outputs.

## Example usage

Default gcov (version 8.3.0)
```yaml
uses: daalbano/lcov-action@v1.0.0
with:
  gcov_tool: /usr/bin/gcov
  params: -c --directory . --output-file coverage.info
```

gcov 7 (version 7.4.0)
```yaml
uses: daalbano/lcov-action@v1.0.0
with:
  gcov_tool: /usr/bin/gcov-7
  params: -c --directory . --output-file coverage.info
```

## Author

Copyright (C) 2020-2021 Daniele Salvatore Albano

## License 

BSD 2-Clause License
