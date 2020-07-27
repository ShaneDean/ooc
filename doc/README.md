# 笔记
包括记录的总结或知识点

# summary
## Abstract Data Types

- 头文件为接口、源文件为实现，多个头文件由一个源文件实现
- 以 void * 来代替实际类型

## Dynamic Linkage Generic Functions

- 增加 constructor 和 destructor 来让对象自己进行自相关的工作
-	所有的‘类’的结构体的第一个对象是描述这个‘类’的结构(type description)
-	**selector** function (dynamic linkage or late binding) : accept arguments of different types and act differently 
on them based on their types.
-	 ?? (Polymorphic function)   (overloaded function)  

**.r**的文件
查了下[参考1](https://stackoverflow.com/questions/958671/what-is-a-private-header-in-c),[参考2](https://stackoverflow.com/questions/6061954/what-are-r-files-in-c)，关键信息如下：
```
	Circle.h    /* Header file with external interfaces, such as methods. */

	Circle.r    /* Representation file for internal use within the class, such as
								structs that define the internal states. */

	Circle.c    /* Implementation of the Circle class. */
```

## Arithmetic Expressions

need **lex** and **yacc** , some resources:

[lex 与 yacc](https://book.douban.com/subject/1105363/)


# exercise

## chapter 1

If an object can belong to several sets simultaneously, we need a different representation for sets. If we continue to represent objects as small unique integer values, and if we put a ceiling on the number of objects available, we can represent a set as a bitmap stored in a long character string, where a bit selected by the object value is set or cleared depending on the presence of the object in the set. 

A more general and more conventional solution represents a set as a linear list of nodes storing the addresses of objects in the set. This imposes no restriction on objects and permits a set to be implemented without knowing the representation of an object. 

For debugging it is very helpful to be able to look at individual objects. A reasonably general  solution are two functions 
```
	int store (const void * object, FILE * fp);
	int storev (const void * object, va_list ap);
```
store() writes a description of the object to the file pointer. storev() uses va_arg() to retrieve the file pointer from the argument list pointed to by ap. Both functions return the number of characters written. storev() is practical if we implement the following function for sets:

```
	int apply (const void * set,
	int (* action) (void * object, va_list ap), ...);
```

apply() calls action() for each element in set and passes the rest of the argument list. action() must not change set but it may return zero to terminate apply() early. apply() returns true if all elements were processed.

## chapter 2
To see polymorphic functions in action we need to implement Object and Set with dynamic linkage. This is difficult for Set because we can no longer record in the set elements to which set they belong.

There should be more methods for strings: we need to know the string length, we want to assign a new text value, we should be able to print a string. Things get interesting if we also deal with substrings.

Atoms are much more efficient, if we track them with a hash table. Can the value of an atom be changed? 

String_clone() poses an subtle question: in this function String should be the same value as self −> class. Does it make any difference what we pass to new()?