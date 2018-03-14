
A collection of small bash utils.

---

- [smash-overlay](smash-overlay)
- [backup-hdd](backup-hdd)
- [screen-timelapse](screen-timelapse)
- [folder-size](folder-size)

---

#### general

Do something to every file in a folder:

```bash
#!/bin/bash
for filename in *; do
    echo "$filename"
done
```

Do something every 5s:

```bash
#!/bin/bash
while sleep 5
do    
    echo "yo"
done
```

Ask for parameters:

```bash
#!/bin/bash
read -p "Do it? (y/n) " doit

if [[ $doit == "y" || $doit == "Y" ]]; then
	echo "Do it"
else
	exit
fi
```

Use the clipboard:

```bash
# Print clipboard content to text file
pbpaste > file.txt
```

Get today's date (YYYY-MM-DD):

```bash
DATE=`date +%Y-%m-%d`
```

Ping an API:

Here, a simple script outputs the contrast ratio of white on a color. We use webaim.org’s API, and pipe the output into `jq` to read a value out of the resulting json. `xargs echo -n` can allow to strip whitespace after the result.

```bash
COLOR="$1"
curl -s https://webaim.org/resources/contrastchecker/\?fcolor\=FFFFFF\&bcolor\="$1"\&api | jq -r '.ratio'
```

Display a notification

```bash
osascript -e 'display notification "Lorem ipsum dolor sit amet" with title "Title"'
```

#### tips

To use a script as an executable, change the extension to `.command`. This will start the script from `/`, though, so you might want to tell it to navigate to where the script is located before doing anything. Add `cd "$(dirname "$0")"` at the top of the script to do so. You'll also have to `chmod 777 name_of_your_script.command` to be able to execute it.

To use a script from anywhere, add it to `/usr/local/bin/`.

Command substitution allows to replace a command with its output, e.g. `$(pwd)` gives the value of `pwd`.

---

#### todo

- Add utils for imagemagick
- Add utils for ffmpeg

#### to explore

- Script as a service (macOS)
- "Daemons" & init scripts
- Scripts in Alfred