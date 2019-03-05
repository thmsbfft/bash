#### random

---

Everything to do with randomness (names, numbers, sorting etc.) ~

```bash
# generate a random alphanumeric 8 char string and copy to clipboard
hexdump -e '/1 "%02x"' -n4 < /dev/urandom | pbcopy
```