


# What is the data
list_of_grades = [98, 76, 71, 87, 83, 90, 57, 79, 82, 94]

# What is the unknown
# we look for the average
# average = sum over an index / amount of students
# let total be the variable for sum
total = 0 # this is the sum of the sequences
grade_counter = 0 # this is the index

# we calculate the sum
for grades in list_of_grades:
	total += grades
	grade_counter += 1
average_grade = total / grade_counter


# ask the user for input
grade = int(input("Enter grade, type -1 to end:\n"))

while grade != -1:
	total += grade
	grade_counter += 1 # index grows/increases by 1
	grade = int(input('Enter grade, -1 to end: '))

if grade_counter != 0:
	average = total / grade_counter
	print(f'Class average is {average:.2f}')
else:
	print('No grades we entered')



