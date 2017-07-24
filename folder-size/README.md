#### folder-size

---

A one liner command that spits out a list of all the heaviest **directories** (> 500MB) in the working directory:

`du -k * | awk '$1 > 500000' | sort -nr`

Uses `du` (disk usage) for the statistics, `awk` for scanning, and `sort` for reverse numerical (`-nr`) sorting.

Also: `df -h` spits out human-readable infos about free disk space.