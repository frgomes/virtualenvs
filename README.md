# virtualenvs
My $HOME/.virtualenvs

## For the impatient

```bash
$ wget https://raw.githubusercontent.com/frgomes/virtualenvs/master/install.sh -O - | bash
```

This will perform the following tasks:
 * Download https://github.com/frgomes/virtualenvs onto your home directory;
 * Create a symbolic link like this: $HOME/.virtualenvs -> $HOME/virtualenvs;
 * Create a Python2 virtualenv for every folder under your $HOME/.virtualenvs which name starts by p2;
 * Create a Python3 virtualenv for every folder under your $HOME/.virtualenvs which name does not start by p2;
