Getting Started with Python
===========================

What is Python?

Variables

Loops

Getting Started with PyEZ
=========================

The PyEZ library is a simple way to utilize Python to interact with Junos. It uses some special programming techniques that keep it free from needing to be updated to support new RPC calls in Junos. It takes a complex process of connecting to the device, running RPCs, and then parsing the output and makes it a snap. However just because the name includes EZ for easy this does not inheritly make it easy to use. There are some important basics that you would need to know before you get started.

Metaprogramming
---------------

[Metaprogramming](http://en.wikipedia.org/wiki/Metaprogramming) is a concept that is applicable in several programming languages. It effectively allows you to call code that does not exist and it utilizes the program as the data. This means that the program can dynamically interpet the code that is called and turn it into other code for you. The feelings around this technuiqe vary, but in the case of PyEZ it is a perfect use case. The downside to consider is that this code is dynamically generated with no specific documentation around the various available methods on the device. Developers tend to spend a lot of time reading documentation and because the code doesn't actually exist this can be a problem. However the target of the PyEZ library is that it is to be used by network engineers who cross the lines between Junos knowledge and Python. This ability to meet in the middle is very powerful in the right hands.

In Junos there are potentially thousands of different RPC calls that the user can call. These RPC calls are well documented on the [Juniper website](http://foo). This documentation tells you what the various RPC calls do and the expected responses.

Mapping RPCs to Methods - The method to the madness
---------------------------------------------------

**RPC Mapping Examples**

```python

# Command show version
# RPC - get-version
# PyEZ - get_version 

```

Tables
------

Best practices in writing tools
-------------------------------

1.	Keep it simple
	-	Don't try and cram too many goals into a single tool
2.	Keep tools to a singular workflow
	-	The best automation is a set of loosely coupled tools that are strung together
	-	This simplifies the debugging and maintenance of the tools
	-	Chaining multiple workflows together is called called orchestration
	-	Use an orchestration tool to chain the tools together
3.	Think about the consumer of the tool
	-	Can they use it easily
	-	Are there a lot of dependencies to run it
	-	Does the tool solve the problem of the user
	-	Will they need your help after you give them the tool
	-	How will they get access to the tool
		-	github, package distribution, email, website
4.	Maintainability
	-	Can the tool be easily maintained
	-	Are there other use cases for the tool
	-	Does it have clear documentation on how to use it
