Getting Started with Python
===========================

Python is a general-purpose, high-level programming language. It was created by [Guido van Rossum](http://en.wikipedia.org/wiki/Guido_van_Rossum) in the late 1980's with its first implementation started in December 1989. Named after the [Monty Python's Flying Circus](http://en.wikipedia.org/wiki/Monty_Python%27s_Flying_Circus) as Guido was a huge fan of the show. Python introduced the idea where indentation was used rather than brackets to specify closures in the code. As Python became popular this indentation became a huge point of contention for new developers migrating from other languages such as PERL. However its benefit is that the code is similarly formatted across multiple developers applications. This was a huge departure from PERL where often there were little coding standards and it made PERL typically hard to maintain.

Python has become the "gold standard" for programming languages. It has a great deal of available libraries that provide support for just about every possible thing that you can imagine. Advanced scientific computing [NumPy](http://www.numpy.org/), gaming [pygame](http://pygame.org/news.html), to automation with [Ansible](https://github.com/ansible/ansible). The ability to write code a single time and not having to worry about porting to multiple platforms is a huge advantage. With the ubiquitous nature of Python and its adherence to formatting standards as defined in [PEP8](https://www.python.org/dev/peps/pep-0008/) it gives programmers an advantage to solve various domain problems in a simmilar fashon.

It is a dynamically typed language in which you do not have to specify the type of a variable. When Python is run it takes the script file and interprets it into byte code. This can be seen when you run a **.py** file as a **.pyc** file is generated in the same folder. This byte code is then run in a virtual machine, similar to Java. This gives the language the ability to be written once and run across multiple platforms. While this has some performance implications generally Python performs quite well. The language is used heavily in many different fields from math, science simulations, various application services, and of course automation.

Some of the downsides to Python stem from its need to move forward. Python created a new version in the 3.X branch in December of 2008. The goal was to remove some of the languages rough edges and increase overall performance. Adoption for the new version has been slow due to the fact that the code, while similar, is not 100% backwards compatible. Due to the wide variety of packages available in 2.X most developers tend to stick with the older release. In the end the competition between the two versions is positive as it helps drive new features into the 3.X line such as the inclusion of strong-typing (predefined data structures).

Python Language Syntax
======================

Programming comes down to two basic concepts: data structures and algorithms. No matter which language you choose to use these are the fundamentals that will be used. A data structure is the format in which you store data. Each language generally has a similar set of data structures that are used such as dictionaries, a key/value type of structure. This is because no matter what language you use you are looking to solve similar problems. Some languages, such as R, have structures that are more friendly to solving its specific problems. In the case of R it has advanced matrices that are used for multi-dementional data. The goal of a language is to give the programmer flexibility and yet help them solve problems in an easy manor.

Once you have your data or data structures defined then we need to go about using them. Data is read, manipulated, removed, and created throughout a program. An algorithm is defined as a formula or procedure for solving a problem. Or in simpler terms how we interact with the data. When you have a program it usually takes some sort of data into it to solve a specific problem. In the case of automation we take in data structures such as the Junos config and then use that data in various ways. We may manipulate the data or config, provide a report or output the data, or even remove elements and commit the change back to the Junos device.

Variables
---------

A variable is a named data structure that contains information used by the program. There are several type of variables that can be used in Python. All Python data structures are known as objects. An object is a data structure that not only contains data but it also contains methods. A method gives the object certain actions that it can take. We will take a more detailed look at this in the next section.

### Numbers

A number in Python is an integer that can contain either a positive or negative value.

Python has four different types of numbers that you can use. This varies depending on how large the number is or how precise the number needs to be.

-	int
	-	A signed integer that can be a positive or negative number
	-	1 or -1 are both ints
-	long
	-	A large number specified with a capital L at the end of the number
	-	51924361L or -51924361L
-	float
	-	A number with floating points specified with a decimal point and a following set of integers
	-	1.01 or -20.2
-	complex
	-	A number that is very large or complex and is followed with a lower case j
	-	3.14j

### Strings

A string is a series of characters. This can include letters or numbers. All Python strings are encoded in UTF-8 as opposed to ASCII. This lets users utilize non-English characters and ultimately simplifies dealing with text.

### Lists and Tuples

A list or tuple is a series of data. They can contain any type of data and the types within a list can be mixed. So you could have an object, a number, and a string contained in either. The list and tuple is the same, except for that a tuple can not be manipulated and is immutable. A list can be reordered or have items deleted from it as needed.

### Classes and Objects

A class is a complex data structure. It contains variables or properties as well as methods. A method is a function that can be used as actions on the object. The classic class example is that think of a class as blueprint to create an object. If I had a car it has certain properties such as color or number of wheels. If you wanted to say open a car door that would be a method or action that the object could take. Object oriented programming was invented by [Alan Kay](http://en.wikipedia.org/wiki/Alan_Kay) at [Xerox PARC](http://en.wikipedia.org/wiki/Alan_Kay) in the 1970s as a way of coupling data with methods of operation.

```python

#number
simple_int = 1

#string
simple_str = "foo"

#a list of ordered objects
simple_list = ["foo","bar",1]

#an tuple is an immutable list
simple_tuples = ("foo", "bar", 1)

#a dict or dictionary is a key/value structure
simple_dict = {'foo':{'bar':True},'shoe':1}

# a class is a structure that defines data storage and operations on the data
class SimpleClass:
	foo = 0
	bar = 0
	def __init__(self,foo,bar):
		foo = foo
		bar = bar

	def add():
		return foo + bar

simple_object = SimpleClass(1,2)
simple_return = simple_object.add()

print simple_return
# Prints 3

```

Functions and Methods
---------------------

Conditionals

Loops

-	[What is Python](http://en.wikipedia.org/wiki/Python_%28programming_language%29)
-	[Python Site](https://www.python.org/)

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
