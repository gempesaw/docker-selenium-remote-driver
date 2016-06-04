xvfb-run --auto-servernum java -jar /opt/selenium/selenium-server-standalone.jar -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver  > /opt/selenium/selenium.log 2>&1 & bash
