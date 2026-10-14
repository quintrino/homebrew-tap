# homebrew-tap

Personal Homebrew formulae.

## Usage

```sh
brew tap quintrino/tap
brew install quintrino/tap/<formula>
```

## Formulae

| Formula | Description |
| --- | --- |
| `godspeed-cli` | Rust-based Godspeed CLI |

## Adding a formula

Drop a `<name>.rb` file into `Formula/`, then run `brew audit --strict --new quintrino/tap/<name>` and `brew install --build-from-source quintrino/tap/<name>`.
