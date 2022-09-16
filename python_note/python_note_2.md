Python note 2
-------------

### Rev
- create a list called 'names_list' with four people's names.
- get the first name
- get the last name

- create a dict called 'name_age_dict' with four people's names and age
- get the age of XX
- get the age of ZZ


### String
```
a[0]
a[-1]
a[:-2]

a.upper()
a.lower()

1+1
1+'haha'
str(1) + 'haha'
'haha' + 'hoho'

a = "kevin"
f"my name is {a}" 

b = 1
f"my number is {b}"
```


### Loop

1. simple loop
    - use indentation to define things to be done for each item
        - tab (use four spaces)

```
for number in [1, 2, 3, 4]:
    print(number)
```

2. enumerate(list)

```
for index, number in enumerate([1, 2, 3, 4]):
    print(index)
    print(number)
```

3. zip(list1, list2)

```
for name, age in zip(['a', 'b', 'c', 'd'], [33, 22, 24, 30]):
    print(name)
    print(age)
```

4. dict.items()

```
name_age_dict = {'a': 33,
                 'b': 22,
                 'c': 24,
                 'd': 30}
for name, age in name_age_dict.items():
    print(name)
    print(age)
```


### Updating a list in a loop

- create an empty list, called `new_list`
- create a list, `old_list = [1, 2, 3, 4, 5]`
- loop through each item of the `old_list`, and `print(item + 1)`
- loop through each item of the `old_list`, and append the `item + 1` to `new_list`


### Updating a dictionary in a loop

- create an empty dict, called `new_dict`
- create a list, `old_dict = ['a': 1, 'b': 2, 'c': 3, 'd': 4, 'e': 5]`
- loop through each seet of `key` & `value` of the `old_dict`, and `print(value + 1)`
- loop through each seet of `key` & `value` of the `old_dict`, and update `new_dict` with the key and `value + 1`


## Task

### Task 1

1. create a list of names
2. by loop through the list, print the names
3. by loop through the list, print 'the name is' in front of each names
4. create a new list of all names included in the list in 1. with 'haha ' in front of each name.

### Task 2

1. create a list of random numbers
2. by loop through the list, print the numbers
3. by loop through the list, print the number + 1
4. create a new list of all numbers included in the list in 1. with 1 added to each number
5. create a new list of all numbers included in the list in 1. with 'haha ' in front of each number.


Python 3
--------

a='abc|def'
string.split('|')


`test.csv`
Fenway
Brookline
Cambridge
Longwood
Allston

```python
with open('test.csv', 'r') as fp:
    text = fp.read()

print(text)
areas = text.split('\n')
```

Print first character of each area

### write a script

test_python.py
```
with open('test.csv', 'r') as fp:
    text = fp.read()

print(text)
areas = text.split('\n')

for area in areas:
    first_char = area[0]

```

`which python`
`python test_python.py`


### if statement
```
with open('test.csv', 'r') as fp:
    text = fp.read()

print(text)
areas = text.split('\n')

for area in areas:
    first_char = area[0]
    print(first_char)
    if first_chr == 'A':
        print(area)

```

a='abc|def'
string.split('|')


`test.csv`
Fenway
Brookline
Cambridge
Longwood
Allston




Python 4
--------

### if conditions / statement

```
>
<
==
!=
4 in [1, 2, 3]
1 in [1, 2, 3]
a is None

if a == True
if a


if (a == True) and (b == True)
if (a == True) or (b == True)

if:
else:

if a:

elif b:

else:
```



### function

```
def add_one(x):
    return x + 1

new_value = add_one(3)
    

def multiply_five(x):
    return x * 5

multiply_five(5)


output = multiply_five(add_one(3)))

output_1 = add_one(3)
output_2 = multiply_five(output_1)

```



```
def add_one(x: int) -> int:
    return x + 1

new_value = add_one(3)
    
```


### modules
```
os
re
pandas
numpy
Path
json


pip
```


5. If statment
6. function
7. Import tools.
8. Pandas
9. Matplotlib
10. nibabel


