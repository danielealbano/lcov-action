## lcov-action

![Build and Test](https://github.com/danielealbano/lcov-action/workflows/Build%20and%20Test/badge.svg)

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
