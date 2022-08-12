Open a text file and try typing the keys
----------------------------------------

```
$ vi ~/linux_tutorial/recon-all.log
```


# Core
---
```
<ESC>
hjkl
3j
2k
10l
7h
```

# Basics 1
---
```
x
2x
D
dd
dj
dk
^$
gg G
H L

<C-d>
(This is Ctrl key and d key pressed together)
<C-u>
fa Fa
ta Ta
w b
#
*
```

# Basics 2
---
```
Yp
YP
Y3p
Y2P
v MOTION_KEYS y MOTION_KEYS p
V MOTION_KEYS y MOTION_KEYS p
<C-v> MOTION_KEYS y MOTION_KEYS p
```

# Bascis 3
---
```
a
A
i
I
c
C
r
R
```

# Intermediate 1
---
```
:!ls
:!top
:r ~/practice.txt
:r !ls ~/Downloads
/ha    n      N     ,/
:s/wa/HH
:s/w/H
:s/w/H/g
:%s/w/H
:%s/w/H/g
:%s/w/H/gc
SELECT then :s/w/H/g
```


# Intermediate 2
---
```
:vs
:split
<C-w> j
<C-w> k
<C-w> h
<C-w> l
:tabnew
gt Gt
i I a A o O
:imap jj <ESC>
:set number
:set number&
Copy a line then, <C-r> 0 in INSERT MODE

# auto completion
<C-n> 
<C-x> 
<C-l>
<C-x><C-f>
/apple
<C-v>I
<C-v>A
```

# Advanced
---

```
neovim
neovim settings
plug
```

