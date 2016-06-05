# docker-selenium-remote-driver

A Dockerfile to generate Linux recordings for the
[Selenium Remote Driver perl Webdriver bindings][0]. It does some sort
of the following:

- downloads selenium standalone server jar
- installs google chrome, firefox (iceweasel on debian), phantomjs
- installs chromedriver
- starts the selenium server with chromedriver & ghostdriver configured
- executes the recording script to make new mocks

If you don't pass any arguments, it will run all of the tests, but you
can specify a particular test to run if you'd like:

    $ docker pull gempesaw/docker-selenium-remote-driver
    $ docker run --security-opt=seccomp=unconfined \
             -v /path/to/your/SRD:/opt/Selenium-Remote-Driver \
             -it --rm gempesaw/docker-selenium-remote-driver \
             t/convenience.t # specifying a test is optional

We use entrypoint, so to get a bash shell, you'd want to do

    $ docker run --security-opt=seccomp=unconfined \
             -v /path/to/your/SRD:/opt/Selenium-Remote-Driver \
             --entrypoint=/bin/bash \
             -it --rm gempesaw/docker-selenium-remote-driver

That won't automatically start the selenium server, but you can see
how to do in this repo's `start.sh`.

Due to some issues with Chrome that I don't understand, you must
provide a security option to `docker run` to get
`google-chrome-stable` to start in the container. [link][1],
[link][2], [link][3], [link][4]. ¯\_(ツ)_/¯

[0]: https://github.com/gempesaw/Selenium-Remote-Driver
[1]: https://github.com/docker/docker/issues/1079
[2]: https://github.com/jfrazelle/dockerfiles/issues/65
[3]: https://docs.docker.com/engine/reference/run/
[4]: https://blog.samcater.com/docker-arch-linux-and-user-namespaces/
