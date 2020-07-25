# 笔记
包括记录的总结或知识点

# summary
## Abstract Data Types

- 头文件为接口、源文件为实现，多个头文件由一个源文件实现
- 以 void * 来代替实际类型


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