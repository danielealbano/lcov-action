## lcov-action

[![Build Status](https://github.com/daalbano/lcov-action/workflows/test/badge.svg)](https://github.com/daalbano/lcov-action/actions?workflow=test)

This action let you to run lcov with the needed parameters

## Inputs

### `params`

**Required** Parameters to pass to lcov, no default.

## Outputs

No outputs.

## Example usage

```yaml
uses: daalbano/lcov-action@v1.0.0
with:
  params: -c --directory . --output-file coverage.info
```

## Author

Copyright (C) 2020-2021 Daniele Salvatore Albano

## License 

BSD 2-Clause License
