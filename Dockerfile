FROM ubuntu
MAINTAINER melgarejo

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install python
RUN apt-get -y install python-pip
#RUN apt-get -y install nano
RUN pip install virtualenv
RUN git clone https://github.com/gnarula/django-ribbit.git
RUN virtualenv --no-site-packages ribbit_env
RUN /bin/bash -c "source /ribbit_env/bin/activate"

#RUN pip install django==1.6.11
#RUN pip install South
#->
#RUN pip install -r requirements.txt
RUN ls
#Agrega ',' a TEMPLATE_DIR
RUN /bin/bash -c "sed -i '114s/$/,/' django-ribbit/ribbit/settings.py"

WORKDIR ./django-ribbit
RUN ls
RUN pip install -r requirements.txt

RUN python manage.py syncdb --noinput
RUN python manage.py migrate ribbit_app

#RUN python manage.py runserver
#->
CMD python manage.py runserver 0:$PORT
