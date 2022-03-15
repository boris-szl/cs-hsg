class Employee:
    def __init__(self, first_name, last_name, ssn, salary):
        self._first_name = first_name
        self._last_name = last_name
        self._ssn = ssn
        self.salary = salary
        
    def get_name(self):
        return self._last_name
    
    def set_name(self, name):
        self._last_name = name


    def __str__(self):
        return self._first_name + " " + self._last_name
    
    def __repr__(self):
        return self._last_name + " " + self._first_name 

e1 = Employee("Sarah", "Vanderguard", 111001, 250000)

def call():
    return e1

call()