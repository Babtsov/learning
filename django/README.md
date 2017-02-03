## Common commands under django-admin/manage.py
`django-admin startproject myname` auto generate initial setup for django  
`runserver` start the django development server  
`startapp myname` auto generate initial setup for django app  
`migrate` Synchronizes the database state with the current set of models and migrations  
`makemigrations` tell django that you’ve made some changes to your models  
`sqlmigrate` command takes migration names and returns their SQL  
`check` checks for any problem in the project  
`shell` enter the django shell
`createsuperuser` create super user for the admin site

## Make a model change
* Change your models (in models.py).
* Run `python manage.py makemigrations` to create migrations for those changes
* Run `python manage.py migrate` to apply those changes to the database.

## Using the django shell
```python
from polls.models import Question, Choice #import models
Question.objects.all() # query the model
q = Question(question_text="What's new?", pub_date=timezone.now()) # create a new object model
q.save() # commit to database
# Access model field values via Python attributes.
q.id
q.question_text
q.pub_date
Question.objects.all() # show all questions in database
Question.objects.filter(id=1) #query by id
Question.objects.filter(question_text__startswith='What') #query by other pattern
Question.objects.get(id=2) # can also get
Question.objects.get(pk=1) # use primary key
q.choice_set.all()
q.choice_set.create(choice_text='Not much', votes=0)
c = q.choice_set.filter(choice_text__startswith='Just hacking')
```
