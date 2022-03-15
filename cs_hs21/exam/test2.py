import time

class Person:
	def __init__(self, name, year_of_birth):
		self.name = name
		self.year_of_birth = int(year_of_birth)

	def compute_age(self):
		return 2021 - self.year_of_birth

	def __str__(self):
		return f"{self.name} ({self.compute_age()})"


persons = []


# Ausstehend
class Superhero(Person):
	def __init__(self, alias, powerlevel):
		super().__init__(self)
		self.alias = alias
		self.powerlevel = int(powelevel)


def main():
	print("Starting Programm...")
	time.sleep(2)
	print("Hi! What would you like to do?")
	while True:
		options = "(1) Add People\n(2) Find the youngest and oldest\n(3) Fancy Table\n(4) Filter\n"
		cin = input(options)
		if int(cin) == 1:
			n_persons = input("How many persons do you want to add?\n")
			while len(persons) < int(n_persons):
				name = input("Whats the person full name (Surname, Name):\n")
				birth_date = input("How about their year of birth? (YYYY):\n")
				persons.append(Person(name, int(birth_date)))
				print(f"Person added. ({len(persons)}/{n_persons})")
				if len(persons) == int(n_persons):
					break
				else:
					continue
			print("Process finished")
			check = input("Do you want to check the list? (y/n):\n")
			if check == "y":
				for obj in persons:
					time.sleep(1)
					print(obj.name, obj.year_of_birth, sep = " ")
			else:
				pass
			time.sleep(2)
			print("What do you want to do next?")
		elif int(cin) == 2:
			options2 = "(1) Youngest\n(2) Oldest\n"
			input2 = input(options2)
			if int(input2) == 1:
				youngest = persons[0].compute_age()
				for obj in persons:
					if (obj.compute_age() < youngest):
						youngest = obj.compute_age()
				print(obj.name, youngest, sep = " ")
			elif int(input2) == 2:
				oldest = persons[0].compute_age()
				for obj in persons:
					if (obj.compute_age() > oldest):
						oldest = obj.compute_age()
				print(obj.name, oldest, sep = " ")
			time.sleep(2)
		elif int(cin) == 3:
			print('Name' + 'Year of Birth Age'.rjust(26))
			print('-'.center(30, "-"))
			for obj in persons:
				print(obj.name.ljust(20),str(obj.year_of_birth).rjust(6),obj.compute_age())
			time.sleep(2)
		elif int(cin) == 4:
			# filter gen x, output = list
			gen_x = []
			for obj in persons:
				if (1965 < obj.year_of_birth <= 1979):
					gen_x.append(obj)
			for obj in gen_x:
				print(obj.name, obj.year_of_birth, sep = " ")



if __name__ == "__main__":
	main()