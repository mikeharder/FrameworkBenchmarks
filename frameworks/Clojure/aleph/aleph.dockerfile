FROM tfb/leiningen-java8:latest
ADD ./ /aleph
WORKDIR /aleph
RUN lein clean
RUN lein uberjar
RUN ls -alh
CMD java \
    -server \
    -Xmx2g \
    -XX:+UseG1GC \
    -XX:MaxGCPauseMillis=10 \
    -jar target/*-standalone.jar