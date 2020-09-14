# chrome-pyselenium

Docker image to use python selenium with chrome driver and headless Chrome right off the trunk

[![Docker Pulls](https://img.shields.io/docker/pulls/mehrdadkhah/chrome-pyselenium.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/mehrdadkhah/php7/) [![Docker Build Statu](https://img.shields.io/docker/build/mehrdadkhah/chrome-pyselenium.svg?style=flat-square)](https://hub.docker.com/r/mehrdadkhah/chrome-pyselenium/) [![Docker Automated buil](https://img.shields.io/docker/automated/mehrdadkhah/chrome-pyselenium.svg?style=flat-square)](https://hub.docker.com/r/mehrdadkhah/chrome-pyselenium/)

Using the binary from the Chromium snapshot bucket

Ready to crawl what you want ... :)

## usage

docker pull mehrdadkhah/chrome-pyselenium

```
$ docker run -it --rm -p=0.0.0.0:9222:9222 --name=chrome-pyselenium -v /tmp/chromedata/:/data mehrdadkhah/chrome-pyselenium
```

**Access to chrome-pyselenium container bash**

docker exec -it chrome-pyselenium bash

## More

**What is Selenium?**
SELENIUM is a free (open-source) automated testing framework used to validate web applications across different browsers and platforms. You can use multiple programming languages like Java, C#, Python etc to create Selenium Test Scripts. Testing done using the Selenium tool is usually referred to as Selenium Testing.

Selenium Python bindings provides a simple API to write functional/acceptance tests using Selenium WebDriver. Through Selenium Python API you can access all functionalities of Selenium WebDriver in an intuitive way.

Selenium Python bindings provide a convenient API to access Selenium WebDrivers like Firefox, Ie, Chrome, Remote etc.

To know more about [python selenium](https://selenium-python.readthedocs.io/)
