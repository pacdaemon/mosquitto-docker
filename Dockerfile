FROM resin/rpi-raspbian
LABEL manteiner="pac@codebox.com.ar"

# install prerequisites
RUN apt-get update
RUN apt-get install wget
WORKDIR /root
RUN wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
RUN apt-key add mosquitto-repo.gpg.key 
RUN echo "deb http://repo.mosquitto.org/debian jessie main" > /etc/apt/sources.list.d/mosquitto.list
RUN apt-get update 
RUN apt-get install mosquitto 
EXPOSE 1883
CMD /usr/sbin/mosquitto


    