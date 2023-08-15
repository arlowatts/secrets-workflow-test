FROM busybox:latest
ARG TEST_SECRET_2

COPY file1.txt /.
COPY file2.txt /.
COPY file3.txt /.
COPY file4.txt /.
RUN echo $TEST_SECRET_2 | base64 --decode > file5.txt

ENTRYPOINT echo Hello World!
