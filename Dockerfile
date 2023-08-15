FROM busybox:latest

COPY file1.txt /.
COPY file2.txt /.
COPY file3.txt /.

ENTRYPOINT echo Hello World!
