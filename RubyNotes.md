Intro to Object Relations notes

We want individual objs in Ruby to interact
and relate to one another in ways that 
mimic real-world relatedness.

modelds:= instances of your class

Models can be related to each other through
a "belongs to" relationship. 

When building a music app we can write
a class to represent a song. 

The class (Song) will have an attribute accessor called :title and an initialize method with explicitly defined getter method inside. 

reminder: local vars and boudn to the method in which they're defined
instance vars are bound to the class of
which they're a part (ie can be accessed
by every method of the obj).