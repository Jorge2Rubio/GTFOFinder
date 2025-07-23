## GTFOBins 
What's in the box? <br>
You get two things:<br>

- gtfo.sh - A scanner that finds dangerous binaries you can exploit.<br>

- .gtfodata/ - A folder full of cheat sheets for breaking shit.<br>

### How to Use This Damn Thing<br>

1. Unzip It<br>

bash
unzip gtfo-bundle.zip

2. Run the Scanner<br>
Make it executable and fire it up:<br>

chmod +x gtfo.sh  
./gtfo.sh

<br>
3. What You'll See <br>
The script hunts for SUID/SGID binaries (the kind that can give you root if they're fucked up). When it finds one, it shows: <br>

Where the binary is (like /usr/bin/sudo) <br>

What you can do with it (like sudo or shell tricks) <br>

The actual commands to run (copypasta this shit) <br>

Example output: <br>

[!] Found something juicy: /usr/bin/sudo
 [>] Tricks you can pull: sudo, shell
 [>] Sudo exploit:
    sudo sudo /bin/sh
 [>] Shell exploit:
    sudo -u root /bin/sh
How to Read the GTFOBins Cheat Sheets
Every file in .gtfodata/ (like sudo.md) has exploit recipes like this:

markdown
---
functions:
  sudo:
    - code: sudo sudo /bin/sh
  shell:
    - code: sudo -u root /bin/sh
---
functions: - Different ways to abuse it.

sudo: - How to turn sudo into a root shell.

shell: - How to spawn a shell directly.

## Why Bother With This?
Fast as hell - Finds vulnerable binaries in seconds.
No internet needed - All the exploits are right there.

Thanks to GTFOBins.
