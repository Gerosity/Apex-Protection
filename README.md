# Apex-Protection
Additional protection against EAC for Apex Legends on Linux

**Requires flatpak steam to be installed**

# Includes:
    1. MAC Changer - Randomises your MAC Address (Temporary, resets after restarting PC)
    2. Enable Process Isolation Guide - non-root users are unable to see root processes/services
    3. Disable Process Tracing Guide - non-root users cannot use ptrace capabilities.
    4. Checking
    5. [Old, Untested] EAC Bypass(?)

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

# 4. Checking

    Open ApexProtection/ in terminal
    First, enable execution of the script by entering:
        chmod +x check.sh
    Then execute the script with
        ./check.sh
    Follow terminal instructions

# 5. (Old, Untested) EAC Bypass (?) 
    Go to Steam
    1. In library search for Easy Anti Cheat then click Properties, on launch options put --none
    2. Now go to Compatibility - enable it and set it up to steam Linux runtime
    3. Go to Betas - change it to "test - test branch (may break things)"
    4. Close it - go back to steam and search for steam linux runtime, there should be 3 total runtimes, install 
    them all and right click on Properties for each one and go to Betas - set it 
    up to previous - previous default build
    
    Original post: https://www.unknowncheats.me/forum/apex-legends/578114-method-bypass-eac-linux-trick-04-05-2023-a.html
    
    Just one thing to keep in mind when Easy anti cheat runtime receives an update the "--none" launch 
    option gets removed, so when that happens just write it back on the launch options.
