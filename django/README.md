## Common commands under django-admin/manage.py
`django-admin startproject myname` auto generate initial setup for Django  
`runserver` start the Django development server  
`startapp myname` auto generate initial setup for Django app  
`migrate` Synchronizes the database state with the current set of models and migrations  
`makemigrations` tell Django that you’ve made some changes to your models  
`sqlmigrate` command takes migration names and returns their SQL  
`check` checks for any problem in the project  

## Make a model change
* Change your models (in models.py).
* Run `python manage.py makemigrations` to create migrations for those changes
* Run `python manage.py migrate` to apply those changes to the database.
