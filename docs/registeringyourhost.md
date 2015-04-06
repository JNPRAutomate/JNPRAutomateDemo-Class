Registering Your Host to the Hub
================================

As each Student's vSRX will be using DHCP to assign addresses to their Untrust interface, we need to register them with the central database.

## Student Registration
The process is mostly straight forward, and simply requires you to enter your name.

1. Open the Web Browser on your local NetDevops Machine and connect to http://10.10.0.10/ . You will now be presented with the following image
	-	It is important to do this from the NetDevOps machine and not your local laptop browser.
![Student Portal1](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/Images/Reggie-Portal-SignIn.png)
2. Enter your name in the Text box on the screen and hit submit.
![Student Portal2](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/Images/Reggie-Portal-SignIn-WithName.png)
3. You should now be redirected to the Student Summary page that lists all of your IP details for the rest of this lab.
	- You should copy these details down onto the printed hand out for future reference.
	- If you need this information again, returning to the registration portal will take you directly to this summary screen.
![Student Portal3](https://github.com/JNPRAutomate/JNPRAutomateDemo-Student/blob/master/docs/Images/Reggie-Portal-StudentSummary.png)

After you have registered, the Head End SRX will have all the details required for you to continue your lab. The proctor will run an Ansible playbook that connects to the Reggie API and automatically provisions your VPN.

Tools
-----
-	Web Browser
-	"Reggie" Student Registration Portal
