FROM ubuntu
MAINTAINER melgarejo

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install python
RUN apt-get -y install python-pip
RUN pip install virtualenv

RUN git clone https://github.com/Blightwell/arquitectura-sistemas-t1.git
RUN virtualenv --no-site-packages ribbit_env
RUN /bin/bash -c "source /ribbit_env/bin/activate"

#RUN pip install django==1.6.11
#RUN pip install South
#->
WORKDIR ./arquitectura-sistemas-t1/django-ribbit
RUN pip install -r requirements.txt

RUN python manage.py syncdb --noinput
RUN python manage.py migrate ribbit_app

#RUN python manage.py runserver
#->
CMD python manage.py runserver 0:$PORT
