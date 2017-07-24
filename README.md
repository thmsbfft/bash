
A collection of small bash utils.

---

- [smash-overlay](smash-overlay)
- [backup-hdd](backup-hdd)

---

#### general

Do something to every file in a folder:

```
#!/bin/bash
for filename in *; do
    echo "$filename"
done
```

Do something every 5s:

```
#!/bin/bash
while sleep 5
do    
    echo "Yo"
done
```

Ask for parameters:

```
#!/bin/bash
read -p "Do it? (y/n) " doit

if [[ $doit == "y" || $doit == "Y" ]]; then
	echo "Do it"
else
	exit
fi
```

Use the clipboard:

```
# Print clipboard content to text file
pbpaste > file.txt
```

#### tips

To use a script as an executable, change the extension to `.command`. This will start the script from `/`, though, so you might want to tell it to navigate to where the script is located before doing anything. Add `cd "$(dirname "$0")"` to do so.

To use a script from anywhere, add it to `/usr/local/bin/`.

---

#### todo

- Add utils for imagemagick
- Add utils for ffmpeg