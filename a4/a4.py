# Author: Boris
# Last Updated: 


# --- ASSIGNMENT 4 ---
# 4.1: Recursion
# returns the sum between 2 and n
def recursive_sum(x=2):
	if x <= 4 or x <= 2:
		return 0
	else:
		return x + recursive_sum(x-2) - 2

#testing
even_numbers = [2,4,6,8,10,12]
for even in even_numbers:
	print(f'Sum between 2 and {even}: {recursive_sum(even)}')

# SOLVED
# -----------------------

# 4.2: Fibonacci Numbers

# evaluates the folgeglieder für eine bestimmte Schranke
def fibonacci(n):
	if n < 0:
		print("Incorrect input")
	elif n == 0:
		return 0
	elif n==1:
		return 1
	elif n==2:
		return 1
	else:
		return fibonacci(n-1) + fibonacci(n-2)

# Testing
print("\n---We are testing the fibonacci funciton--")
print(f'Your fibonacci number is {fibonacci(7)}')

# SOLVED

# -----------------------

# 4.3:  S(n)ort digits....
# 4.3.1 Lambda alternative
def sort_number_by(n):
	n = str(n)
	n = list(n)
	print(n)

# lets see what the map funciton does
def map_something(n):
	n = str(n)
	n = list(n)
	n = map(1,n)
	m = set(n)
	print(m)

# Testing
# print(sort_number_by(42))
# print(sort_number_by(613))
	
def sort_number_1(n):
	n = list(str(n))
	sorted_n = sorted(n,reverse=True)
	s = "".join(sorted_n)
	return s

# Testing
print(sort_number_1(42))
print(sort_number_1(613))
print(sort_number_1(2514235432643))

# SOLVED 
# ----------------------- 

# 4.4 Group Creation
def group_students(students, n=2):# n steht für Anzahl der mitlgieder
	students = students
	if isinstance(students, list):
		l = len(students)
		if l % n == 0:
			return [students[i*l//n:(i+1)*l//n] for i in range(n)]
		elif len(students) != 0:
			students.append("__EMPTY__")
			return group_students(students)

# testing
students_even = ["Hiro", "Bob", "G-Man", "Steven", "Marley", "Swag"]
print(group_students(students_even,6))

students_odd = ["Hiro", "Bob", "G-Man", "Steven", "Marley"]
print(group_students(students_odd))

# -----------------------
# - Side functions -

def factorial(x):
	if x == 1:
		return 1
	else:
		return (x * factorial(x-1))

