sudo clear
sleep 1
echo "By Gerosity - https://www.unknowncheats.me/forum/members/3455894.html"
sleep 1
echo "Now Outputting A List Of Network Interfaces"
sleep 1
echo "-----------------------------------------------------------------------"
ip a
sleep 0.5
echo "-----------------------------------------------------------------------"
echo "Please enter your network interface: [Label with a number & a colon]"
read networkinterface
echo "Selected Interface: $networkinterface"
sleep 1
echo "-----------------------------------------------------------------------"
echo "Randomizing MAC Address..."
sleep 1
sudo macchanger --random $networkinterface
sleep 1
echo "-----------------------------------------------------------------------"
echo "Finished!"
