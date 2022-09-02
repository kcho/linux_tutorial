Python note 1
-------------

## Installation

1. Download miniconda `https://docs.conda.io/en/latest/miniconda.html`
2. `$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh`
3. `$ bash Miniconda3-latest-Linux-x86_64.sh`
4. Re-open your terminal
5. `$ which python`
6. `$ which conda`
7. `$ conda install jupyter`
8. `$ which jupyter`


## Jupyter notebook
1. `$ jupyter notebook`
2. `<s-enter>` for run the cell and go to a new cell below.
3. `<c-enter>` for run the cell.
4. The similar `normal` mode as `VIM`: <esc> then j, k 
5. `m` in the `normal` mode to merge cells.
6. `?` for more!


## Basics

1. Data types
- string
```
a = 'haha'
```
- integer
```
a = 3
```
- float
```
a = 3.14
```
- list (tuple)
```
a = ['haha', 'hoho', 'kevin']
a = [3, 4, 5, 6]
a = [3.14, 8.9, 3.3, 2.1]

a = ['haha']
a = [3]
a = [3.14]

a = []
```
- dictionary
```
a = {'name': 'kevin', 'address': 'Fenway', 'age': 95}
```

- `type` command
```
type(a)
```

- bool
```
a = True
a
a = False
a
```

2. Slicing
- list
```
a = ['haha', 'hoho', 'kevin', 'Fenway', 'address', 'age']
a[0]
a[1]
a[-2]
a[:2]
a[2:]

a.append('Boston')
a

a.index('haha')
a.pop(0)
a

a[0] = 'zzzzzzzzzzzzz'
a[-1] = 'yyyyyyyyyyyyyyy'
```
- dictionary
```
a = {'name': 'kevin', 'address': 'Fenway', 'age': 95}
a['name']
a['address']

a.keys()
a.values()

a['name'] = 'hohoho'
a['new'] = 1
a


a.pop('new')
```


## Task

1. Create a dictionary called `place_dict_1`. Make it to represent a place. eg) your home or office.
    - example keys to use: address, phone_number, number_of_people
2. Create another dictionary called `place_dict_2`, representing another place.
    - example keys to use: address, phone_number, number_of_people
3. Create a list called `place_dict_list` and append the dictionaries above to the list.
4. Get the value of `phone_number` from the first dictionary.
5. Get the value of `phone_number` from the second dictionary.
6. Get number of people in the first place and second place and add them.
7. Create another dictionary called `place_dict_3`, representing another lab info.
    - example keys to use: address, phone_number, number_of_people
8. Add `place_dict_3` to `place_dict_list`.


9. Make an empty dictionary, called `people_dict`
10. Make another dictionary of yourself, `me_dict`
    - example keys to use: name, hobby, hometown, free_today, phone_number
11. link `me_dict` as your name to the `people_dict`
12. repeat 10. & 11. with another person dict
13. get your phone number from `people_dict`
14. add list of friend to each dict in `people_dict` with `friends` key.

