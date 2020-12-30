FROM continuumio/anaconda3:4.4.0
COPY . /usr/app/
EXPOSE 8888
WORKDIR /usr/app/
RUN pip install --upgrade pip
RUN pip install --upgrade numpy
RUN pip install -r requirements --ignore-installed
ENTRYPOINT ["jupyter","notebook","--ip=0.0.0.0","--allow-root"]
