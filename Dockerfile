FROM making/alpine-java-bash-git

MAINTAINER lvdk "lvdk@bie-plc.com"

EXPOSE 9000

WORKDIR /code

COPY play/target/universal/play-java-starter-example-1.0-SNAPSHOT.zip /code/

RUN cd /code && unzip play-java-starter-example-1.0-SNAPSHOT.zip

CMD /code/play-java-starter-example-1.0-SNAPSHOT/bin/play-java-starter-example

ENV TZ=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone