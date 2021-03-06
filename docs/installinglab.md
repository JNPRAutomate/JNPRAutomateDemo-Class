# Installing the Lab Repository

The lab is a set of files and directories that are hosted on github. This allows the lab to be completely open for everyone to participate in creation of the lab. While this may seem like a new concept, github is the new way that developers share ideas and code to make the world a better place.

# Installing Git on your system

Installing Git on your host will depend on the version of the operating system that you are running.

The simplest thing to do would be to install the GitHub tool for either Windows or Mac.

- [Mac GitHub Tool](https://mac.github.com/)
- [Windows GitHub Tool](https://windows.github.com/)

However if you wish to install the git tool suite

- [Install Full Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

**Windows Install**

On Windows there is a challenge when it comes to working with Vagrant. Vagrant ideally needs access to an ssh client. Windows does not come with an SSH client. However if you install the Git package with the default settings you will be able to use ssh via its built in BASH shell. Installing this will be the easiest method to get all of the value out of Vagrant.

- [Installing Git + SSH](https://git-scm.com/download/win)

![Windows Install Step 1](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/Images/1_git_install.png)

![Windows Install Step 2](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/Images/2_git_install.png)

![Windows Install Step 3](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/Images/3_git_install.png)

![Windows Install Step 4](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/Images/4_git_install.png)

![Windows Install Step 5](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/Images/5_git_install.png)

![Windows Install Step 6](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/Images/6_git_install.png)

![Windows Install Step 7](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/blob/master/docs/Images/7_git_install.png)

# Cloning the Repository

Ideally you want to use [git](https://en.wikipedia.org/wiki/Git_(software)) to download the the repository. This provides a few key benefits over downloading it as a zip file.

- The ability to review the history of changes to the lab
- Make changes and save them to your own branch
- Easily pull new updates to the lab as they are created
- Learn git

To clone the repository you can use one of the following command sets:
- (SSH) git clone git@github.com:JNPRAutomate/JNPRAutomateDemo-Class.git
- (HTTPS) git clone https://github.com/JNPRAutomate/JNPRAutomateDemo-Class.git

# Downloading the Repository

If you don't want to deal with getting git just yet you can also download the repository as a zip file. This way you can get started without git.

- [Zip File of Current Repository](https://github.com/JNPRAutomate/JNPRAutomateDemo-Class/archive/master.zip)

Once the Zip file is downloaded please open it.

# Learning More about Git

Git is an amazing piece of software. There is so much to learn how git works and all of the available tips and tricks. Here are some great learning resources if you wish to know more about Git.

-	[Git Intro](http://git-scm.com/about)
-	[Git Book](http://git-scm.com/book/en/v2)
-	[Git Docs](http://git-scm.com/doc)
-	[Git Videos](http://git-scm.com/videos)
-	[Git Resources](http://git-scm.com/doc/ext)
-	[Git GUI Clients](http://git-scm.com/downloads/guis)
-	[libgit2 bindings](https://libgit2.github.com/)

# Entering the repository

Once you have cloned or downloaded the repository you will have the minimum requirements to get started. All of the required information to run the lab is contained within the repository. Any commands referenced within the lab such as using vagrant are done within the repository.
