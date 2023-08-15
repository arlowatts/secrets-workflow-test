FROM busybox:latest

COPY file1.txt /.
COPY file2.txt /.

ARG FILE_3
RUN echo $FILE_3 | base64 -d > file5.txt
