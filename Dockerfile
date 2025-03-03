FROM ubuntu:jammy
RUN apt-get update
WORKDIR ./flask_app
RUN /bin/bash -c "apt-get install python3-pip -y"
RUN apt install python3-venv -y
#RUN mkdir flask_app && cd flask_app
RUN python3 -m venv venv
RUN /bin/bash -c "source venv/bin/activate"
RUN /bin/bash -c "pip install Flask"
COPY app.py .
RUN export FLASK_APP=app.py
CMD ["flask","run","--host=0.0.0.0"]


