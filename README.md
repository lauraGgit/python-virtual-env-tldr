# python-virtualenv-tldr

Install the basic virtualenv programs for python3. This will allow you to great project specific dependencies.
```
pip3 install virtualenv
pip3 install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
```

Then you will need to update your shell profile to allow this to work. 
Out of the box this looks like its ~/.bashrc. To add to your profile type run these two lines.
```
export WORKON_HOME=~/Envs >> ~/.bashrc
source /usr/local/bin/virtualenvwrapper.sh >> ~/.bashrc
First you'll want t to source the bashsrc. 
source ~/.bashrc
```

Then you will want to great your own virtualenv. 
```
mkvirtualenv <name_of_your_env>
```
This will now spin it up the virtual env. You should see your shell bar change a bit 
```
(name_of_env) ~
```
You can now run the list of the dependencies.
```
cd your_project_folder
pip install -r requirements.txt
```

When you need to log off, then you can `deactivate` the virtualenv.
```
 deactivate
 ```
 
 You can also get a list of your virtualenvs with `lsvirtualenv` or delete and env with `rmvirtualenv`.



