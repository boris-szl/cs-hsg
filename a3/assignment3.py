
# --- ASSIGNMENT 3
# -- 3.1 --
def sum_numbers(start, end):
	total = 0
	for i in range(start, end):
		total += i
	return total

print(sum_numbers(1,10))

# --- 3.2 ---
# false code (garbage)
def fizzbuzz(limit):
	list_limits = []
	for i in range(limit):
		if i % 5 == 0 and i % 3 == 0:
			list_limits.append("FizzBuzz")
		elif (i % 5 == 0):
			list_limits.append("Buzz")
		elif (i % 3 == 0):	
			list_limits.append("Fizz")
		else:
			list_limits.append(i)
	return list_limits

# while-function (correct code)
def fizzbuzzWhile(limit):
	list_limits = [] # sequence of elements
	i = 0 # define lower limit
	while i in range(limit):
		if i % 5 == 0 and i % 3 == 0:
				list_limits.append("FizzBuzz")
		elif i % 5 == 0:
				list_limits.append("Buzz")
		elif i % 3 == 0:
				list_limits.append("Fizz")
		else:
				list_limits.append(i)
		i += 1
	return list_limits

def appendToList(upper_limit):
	list_limits = []
	i = 0 # lower limit

result = fizzbuzz(6)
print(result)

result2 = fizzbuzzWhile(6)
print(result2)

# --- 3.3 ---
# removing duplicate elements
def unique_elements(elements):
	if len(elements) != len(set(elements)):
		elements = list(set(elements))
		elements.sort()
	else:
		elements.sort()
	return elements

# Testing 
list_values = [1,1,1,1,2,2,2,3,3,3,4,4,5,5]
list_values2 = [3,2,1,5,4,5,5,6]

print(unique_elements(list_values))
print(unique_elements(list_values2))

# def removeDuplicates(elements):
# 	return list(set(elements))

# def createUniqList(elements):
# 	if unique_elements(elements) == False:
# 		unique = removeDuplicates(elements)
# 		return unique
# 	else:
# 		print("List already has unique values")
# 		return None

# def checkIfListByInstance(list_parameter):
# 	if isinstance(list_parameter, list):
# 		return True
# 	else:
# 		return False

# def checkIfListByType(list_parameter):
# 	if type(list_parameter) == list:
# 		print("Object is a list")
# 	else:
# 		print("Object is not a list")



# --- 3.4 ---
def get_last_string(elements):
	new_list = []
	for x in elements:
		if type(x) == str:
			new_list.append(x)
		else:
			pass
	return new_list[-1]

# ignore
def get_last_str_reverse(elements):
	new_list = []
	for x in elements:
		if isinstance(x, str):
			new_list.append(x)
		else:
			pass
	new_list.reverse()
	return new_list[0]

# testing function
some_list = [1, 'bla', 'bla', 4, 'new']
print(get_last_string(some_list))
print(get_last_string([1, "voila", 3]))



# --- 3.5 ---
# solved  usinglist commprehension

def get_elements(elements, index):
	k_elements = [x[index] for x in tuple_sample]
	return k_elements

# testing function
tuple_sample = [('a', 'b'), ('c','d'),('e','f')]
print(get_elements(tuple_sample, index=1))








