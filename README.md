# Apex-Protection
Additional protection against EAC for Apex Legends on Linux

# Includes:
    1. MAC Changer - Randomises your MAC Address (Temporary, resets after restarting PC)
    2. Enable Process Isolation Guide - non-root users are unable to see root processes/services
    3. Disable Process Tracing Guide - non-root users cannot use ptrace capabilities.

# 1. MAC Changer Guide (Temporary)
**1.1 Install macchanger**
Open Terminal
To install macchanger on Ubuntu, Debian, and Linux Mint:
    sudo apt install macchanger

To install macchanger on CentOS, Fedora, AlmaLinux, and Red Hat:
    sudo dnf install macchanger

To install macchanger on Arch Linux and Manjaro:
    sudo pacman -S macchanger
**1.2 Run Script**
Open Terminal In ApexProtection/MACchanger
First, enable execution of the script by entering:
    chmod +x macchanger.sh
Then execute the script with
    ./macchanger.sh

You will be given a list of network interfaces (Labeled with a number and then a colon)
Enter your network interface (e.g. for me its enp34s0)
Script will then automatically randomise your MAC address
If you don't know what network interface is the correct one to change, do all of them

# 2. Enable Process Isolation Guide (Temporary)
Open Terminal in ApexProtection/ProcessIsolation
First, enable execution of the script by entering:
    chmod +x enable.sh
Then execute the script with
    ./enable.sh
Follow terminal instructions

# 3. Enable Process Isolation Guide (One-time)
Open ApexProtection/ProcessTracing
Follow Instructions In The Text File
Or
GoTo:
/ect/sysctl.d/10-ptrace.conf
Edit:
kernel.yama.ptrace_scope = 1
To:
kernel.yama.ptrace_scope = 2
Save and close


    
