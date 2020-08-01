FROM python:3.5

ENV VIRTUAL_ENV /env
ENV PATH $VIRTUAL_ENV/bin:$PATH
ENV PYTHON_VERSION 3.5

ADD simple_python_script.py /app/
COPY simple_python_script /app/
WORKDIR /app

# Install curl and other utils needed for running cronjob
RUN apt-get --assume-yes update
RUN apt-get --assume-yes install curl

RUN pip install virtualenv
RUN virtualenv $VIRTUAL_ENV -p python$PYTHON_VERSION
RUN . activate
#RUN pip install requests
