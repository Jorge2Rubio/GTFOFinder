## GTFOBins 
What's in the box? <br>
You get two things:<br>

- gtfo.sh - A scanner that finds dangerous binaries you can exploit.<br>

- .gtfodata/ - A folder full of cheat sheets for breaking shit.<br>

## How to Use This Damn Thing<br>

### Unzip It<br>
```
unzip gtfo-bundle.zip
```

### Run the Scanner<br>
```
chmod +x gtfo.sh 
./gtfo.sh 
```

What You'll See <br>
The script hunts for SUID/SGID binaries (the kind that can give you root if they're fucked up). When it finds one, it shows: <br>
Where the binary is (like /usr/bin/sudo) <br>
What you can do with it (like sudo or shell tricks) <br>
The actual commands to run (copypasta this shit) <br>

Example output: <br>

[!] Found something juicy: /usr/bin/sudo <br>
 [>] Tricks you can pull: sudo, shell <br>
 [>] Sudo exploit: <br>
    sudo sudo /bin/sh <br>
 [>] Shell exploit: <br>
    sudo -u root /bin/sh <br>
How to Read the GTFOBins Cheat Sheets <br>
Every file in .gtfodata/ (like sudo.md) has exploit recipes like this: <br>

```
functions: 
  sudo: 
    - code: sudo sudo /bin/sh 
  shell: 
    - code: sudo -u root /bin/sh 
```
functions: - Different ways to abuse it. <br>
sudo: - How to turn sudo into a root shell. <br>
shell: - How to spawn a shell directly. <br>

## Why Bother With This? <br>
Fast as hell - Finds vulnerable binaries in seconds. <br>
No internet needed - All the exploits are right there. <br>
Thanks to GTFOBins.
