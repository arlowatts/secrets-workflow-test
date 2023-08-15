# Encoding Secrets

When using GitHub Secrets in workflows, it is important to make sure that the secret is properly formatted and can be read correctly. If you are passing the secret to a Docker build, follow the below steps:

1. Use the `base64` command-line tool in a bash shell to encode your secrets. To encode the contents of the file `my-secret`, run `base64 --wrap=0 my-secret`. The `--wrap=0` option disables line wrapping, so the whole file is encoded onto one line.
2. Copy the output of the base64 encoding into your GitHub secret.
3. In your workflow, either:
    * pass the secret to your docker build as a build arg and decode it in the Dockerfile, or
    * copy the secret into a temporary file with `echo ${{ secrets.MY_SECRET }} | base64 --decode > my-secret`

If you create a temporary file, consider deleting it in your workflow as soon as it has been copied into the docker build. If you decode it in your Dockerfile, you may need to try variations of the base64 tool depending on your container's OS. For example, certain version may support only the `-d` flag and not the `--decode` flag.
