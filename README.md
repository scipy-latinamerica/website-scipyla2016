# SciPyLA 2016

Website for the SciPyLA Conference 2016.

## Dependencies

-   Python
-   virtualenv

## Quickstart

Dependencies you need to install beforehand:
~~~
$ sudo apt-get install virtualenv libmysqlclient-dev python-dev
~~~

~~~
$ git clone git@github.com:scipy-latinamerica/website-scipyla2016.git
$ cd website-scipyla2016
$ virtualenv .
$ source bin/activate
$ pip install -r requirements.txt
$ python manage.py syncdb
$ python manage.py loaddata fixtures/*
$ python manage.py runserver
~~~

Open http://localhost:8000/scipyla2016/ on your web browser
to preview the web site.

## Administration

Open http://localhost:8000/scipyla2016/admin/
and log in with the email address and password
that you provide during the quickstart.

If you forgot the email address and password
use

~~~
$ python manage.py createsuperuser
~~~

## Dump data

Some configuration are stored on `fixtures/`
that are load with

~~~
$ python manage.py loaddata fixtures/*
~~~

and need to be run

~~~
$ ./dump.sh
~~~

## Translation

Please read https://docs.djangoproject.com/en/1.4/topics/i18n/translation/#localization-how-to-create-language-files.

To generate the `po` files and extract the marked texts:

~~~
$ cd scipyla2016
$ django-admin makemessages -l pt -l es
~~~

The files to translate will be available at
`scipyla2016/locale/XX/LC_MESSAGES/django.po`

After translate the `po` file you need to generate the .mo files, run:

~~~
$ cd scipyla2016
$ django-admin.py compilemessages
~~~

To test the translation you need to change the default language of your web browser.
In Firefox,
access `about:config`
and change `intl.accept_languages` to `en`, `pt` or `es`,
Django uses [standard language format](https://docs.djangoproject.com/en/1.4/topics/i18n/#term-language-code).
For more information about how Django discovers language preference
read https://docs.djangoproject.com/en/1.4/topics/i18n/translation/#how-django-discovers-language-preference.

## Issues

Please create issues at https://github.com/scipy-latinamerica/scipyla2016/issues.

## Deploy

1.  Access the server using

    ~~~
    $ ssh scipyla2016@web427.webfaction.com
    ~~~

2.  Run the following steps:

    ~~~
    $ cd scipyla2016/
    $ source bin/activate
    $ cd website-scipyla2016/
    ~~~

    **Load the virtualenv is very important.**

3.  Update the source code:

    ~~~
    $ git pull origin master
    ~~~

4.  Run the following step:

    ~~~
    $ touch wf_wsgi.py
    ~~~
