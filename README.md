## Installation

* clone this repo into ~/.vim with the --recursive flag (if you forget the flag, run git submodule update --init after cloning)
* run ln -s ~/.vim/.vimrc ~/.vimrc

## Reminders

### Basic Vim

*Need to fill this out*
* try :args to open new files, multiple at a time

### Plugins

#### ConqueTerm

* ConqueTermVSplit/cq/Cq/CQ [any program]
* Csh - ConqueTermVSplit bash
* Cmysql - ConqueTermVSplit mysql -p

#### Vim Unimpaired

A ton in here. Let's start with ]b and [b for :bn and :bp

#### DbExt

:DBSetOption dbname=cc 

:Sel/Select (finish typing the rest of a select statement to get results in new window)
:Sql (type a sql command, get results)
:SqlX (type a sql command, prompt for LIMIT, get results)
:Desc (prompts for table name, displays describe results)

### Functions in .vimrc

* Shell [any shell command] - shows output of command in new window
* `<tab><tab>` - focus on next window
* `<C-n>` - open new vertical window and focus on it
* `<C-h/j/k/l>` - switch windows by direction
