FROM busybox:latest
ARG TEST_SECRET

COPY file1.txt /.
COPY file2.txt /.
COPY file3.txt /.
RUN echo $TEST_SECRET > file4.txt

ENTRYPOINT echo Hello World!
