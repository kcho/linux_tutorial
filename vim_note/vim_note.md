Open a text file and try typing the keys
----------------------------------------

```
$ vi ~/linux_tutorial/recon-all.log

or

inside vim, :r https://raw.githubusercontent.com/kcho/linux_tutorial/master/vim_note/vim_note.md
```


## We will not write anything, until we are comfortable moving around in vim

- The keys are case sensitive.
- The purpose is to move with the least number of key strokes.
- 5 mins every day for two weeks.
- Change your "caps lock" key to Ctrl to make your life easier.


# Core
---
```
<ESC>
h
j
k
l
3j
2k
10l
7h
```

# Basics 1
---
```
^$
gg
G
H
L
<C-d>
(This is "Ctrl key and d key pressed together)
<C-u>

fa
Fa
ta
Ta
w
b
(go on a word) #
(go on a word) *
```

# Basics 2
---
```
:set number
:set relativenumber
20G
100G
zz
x
2x
D
dd
.
dj
dk
yp
yP
Yp
YP
Y3p
Y2P
v MOTION_KEYS y MOTION_KEYS p
V MOTION_KEYS y MOTION_KEYS p
<C-v> MOTION_KEYS y MOTION_KEYS p
```

# Intermediate 1
---
```
:!ls
:!top
:r ~/practice.txt
:r !ls ~/Downloads
/ha    n      N     noh

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
:e ~/practice.txt
:split
:vsplit
<C-w><C-w>
<C-w> j
<C-w> k
<C-w> h
<C-w> l
:tabnew
gt
Gt
:inormap jj <ESC>
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
a
A
i
I
o
O
c
C
r
R
```

```
:saveas ~/haha.sh
```

# Advanced
---
vimium
Download neovim

Set up neovim
```
mkdir -p ~/.config/nvim
cd ~/.config/nvim
wget https://raw.githubusercontent.com/kcho/linux_tutorial/master/vim_note/init.vim
```

```
:term
<C-\><C-n>
```

plug (https://github.com/junegunn/vim-plug)
split-term (https://github.com/vimlab/split-term.vim)
neovim remote (pip3 install neovim-remote)
color scheme
easy motion
nerdtree
nerdcommenter
