# docker-selenium-remote-driver

A Dockerfile to generate Linux recordings for the
gempesaw/Selenium-Remote-Driver perl Webdriver bindings. It does some
sort of the following:

- downloads selenium standalone server jar
- installs google chrome, firefox (iceweasel on debian), phantomjs
- installs chromedriver
- starts the selenium server with chromedriver & ghostdriver configured
- drops in to a bash shell (this will probably change)

Due to some issues with Chrome that I don't understand, you must
provide a security option to `docker run` to get
`google-chrome-stable` to start in the container:

    docker pull gempesaw/selenium-remote-driver
    docker run --security-opt=seccomp=unconfined -p 2222:22 -it --rm gempesaw/selenium-remote-driver

references: [link][1], [link][2], [link][3], [link][4].

[1]: https://github.com/docker/docker/issues/1079
[2]: https://github.com/jfrazelle/dockerfiles/issues/65
[3]: https://docs.docker.com/engine/reference/run/
[4]: https://blog.samcater.com/docker-arch-linux-and-user-namespaces/
