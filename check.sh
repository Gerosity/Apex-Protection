clear
sleep 1
echo "By Gerosity - https://www.unknowncheats.me/forum/members/3455894.html"
echo "------------------------------------------------------------------------"
echo "Checking Process Isolation"
sleep 1
echo "If no root processes are shown, Your Okay!"
sleep 1
echo " "
ps aux
echo " "
sleep 2
echo "------------------------------------------------------------------------"
sleep 1
echo "Checking Process Tracing"
sleep 1
echo "If kernel.yama.ptrace_scope = 2, Your Okay!"
sleep 1
echo " "
sysctl kernel.yama.ptrace_scope
echo " "
sleep 1
echo "------------------------------------------------------------------------"
echo "Finished!"
