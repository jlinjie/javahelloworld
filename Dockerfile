
FROM java:7

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld

# ENV FOO bar

# ENV TEST test

# `RUN mkdir bin

RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java"]

CMD ["-cp", "bin", "HelloWorld"]

#EXPOSE 80 8080

# RUN mkdir /data/myvol -p

# RUN echo "put some text here hahaha" > /data/myvol/test.txt

# VOLUME /data/myvol
