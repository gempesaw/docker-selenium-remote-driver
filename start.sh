xvfb-run --auto-servernum \
         java -jar /opt/selenium/selenium-server-standalone.jar \
         -Dwebdriver.chrome.driver=$(which chromedriver) \
         -Dphantomjs.binary.path=$(which phantomjs) \
         > /opt/selenium/selenium.log 2>&1 & \
    bash
