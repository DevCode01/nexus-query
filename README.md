# Nexus Query

**Go** · **v0.1.0**

_Prime number finder using the Sieve of Eratosthenes_

---

## Features

- Sieve of Eratosthenes up to any limit
- Formatted output, 10 primes per line
- Count summary

## Installation

```bash
git clone https://github.com/DevCode01/nexus-query.git
cd nexus-query
```

## Usage

```bash
go run main.go 1000
```

## How it works

Computes all prime numbers up to a limit with the Sieve of Eratosthenes implemented on a boolean slice, then prints them 10 per line.

## Options

- `limit` - upper bound (integer >= 2)
- `--help` not supported - run with the limit directly

## Example

```bash
$ go run main.go 30
Found 10 primes up to 30:
2 3 5 7 11 13 17 19 23 29
```

## Testing

```bash
bash tests/run.sh
```

Includes a functional check against real captured output, plus the build/syntax check.

## License

MIT
