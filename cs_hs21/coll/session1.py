
import random
import numpy as np
import math 

def evenorodd(x):
	if x % 2 == 0:
		return 1
	else:
		return 0

# Collection of functions

def multiples(lower_bound, upper_bound, number_n):
	for i in range(lower_bound, upper_bound):
		if i&n == 0:
			print(i)

def list(lower_bound, upper_bound, length):
	list1 = []
	for i in range(0, length):
		list1.append(random.randint(lower_bound, upper_bound))
	return list1

def randomlist(lower_bound, upper_bound, le): 
	rand_list = np.random.randint(lower_bound, upper_bound, size=length)
	return rand_list


def multiples_for_list(arbitrary_list,n):
	for i in arbitrary_list:
		if i%n==0:
			print(f"{i} is the multiple of {n}")

def factorial(n):
	if n <= 1:
		return 1
	else:
		return n * factorial(n-1)

list1 = [4,1,324,9,25,144,255,196,'',1,'',81,361,'',36,1,196,400,1,361,400,81,9]
alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
sentence = []
for int)i in list1:
	math.sqrt(i)
	for j in alphabet:
		i = j
		sentence.append(i)
print(sentence)

#  main

n = int(input("Enter n:\n"))
f = factorial(n)
print(f)










