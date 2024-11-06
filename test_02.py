def get_factorial(n: int) -> int:
    total = 1
    for val in range(1, n + 1):
        total *= val

    return total


def isStrongNumber(n: int) -> bool:
    _n = n
    div, mod = 1_000, 0
    total = 0

    while div > 0:
        div, mod = divmod(_n, 10)
        factorial_of_mod = get_factorial(mod)
        total += factorial_of_mod
        _n = div

    return total == n


def main() -> None:
    print(isStrongNumber(145))


if __name__ == '__main__':
    main()
