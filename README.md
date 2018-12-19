# qrcr

# WIP
Create different QR Codes and get back a (PNG) Canvas

## Installation

1. Add the dependency to your `shard.yml`:
```yaml
dependencies:
  qrcr:
    github: greenbigfrog/qrcr
```
2. Run `shards install`

## Usage

```crystal
require "qrcr"
include QR

canvas = generate_qr("Some Data", 500, 20)
StumpyPNG.write(canvas, "test.png")

```


## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/greenbigfrog/qrcr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Jonathan B.](https://github.com/greenbigfrog) - creator and maintainer
