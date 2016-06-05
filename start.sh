cd /opt/Selenium-Remote-Driver/ && \
xvfb-run --auto-servernum \
         java -jar /opt/selenium/selenium-server-standalone.jar \
         -Dwebdriver.chrome.driver=$(which chromedriver) \
         -Dphantomjs.binary.path=$(which phantomjs) \
         > /opt/selenium/selenium.log 2>&1 & \
    perl t/bin/record.pl $1 && \
    perl -Ilib $1
