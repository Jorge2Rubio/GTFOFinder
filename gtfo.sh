#!/bin/bash

GTFO_DATA_DIR="./gtfodata"  # Directory containing GTFOBins markdown files

echo "
 ██████╗████████╗███████╗ ██████╗ ███████╗██╗███╗   ██╗██████╗ ███████╗██████╗ 
██╔════╝╚══██╔══╝██╔════╝██╔═══██╗██╔════╝██║████╗  ██║██╔══██╗██╔════╝██╔══██╗
██║  ███╗  ██║   █████╗  ██║   ██║█████╗  ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝
██║   ██║  ██║   ██╔══╝  ██║   ██║██╔══╝  ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗
╚██████╔╝  ██║   ██║     ╚██████╔╝██║     ██║██║ ╚████║██████╔╝███████╗██║  ██║
 ╚═════╝   ╚═╝   ╚═╝      ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝
"

echo -e "\n[*] Scanning for SUID/SGID binaries with known GTFOBins techniques...\n"

find / -perm -4000 -type f 2>/dev/null | while read -r fullpath; do
    binname="${fullpath##*/}"
    binname="${binname,,}"  # Convert to lowercase for matching
    gtfo_file="$GTFO_DATA_DIR/${binname}.md"

    if [[ -f "$gtfo_file" ]]; then
        echo -e "\n[+] \033[1;32mGTFOBins Match Found:\033[0m $fullpath"
        echo " [+] Showing GTFOBins documentation:"
        cat "$gtfo_file"
    fi
done

echo -e "\n[*] Offline scan complete."