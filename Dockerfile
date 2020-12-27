FROM continuumio/anaconda3:4.4.0
COPY . /usr/app/
WORKDIR /usr/app/
RUN pip install --upgrade pip
RUN pip install -r requirements --ignore-installed
ENTRYPOINT ["jupyter", "notebook","--ip=*"]

