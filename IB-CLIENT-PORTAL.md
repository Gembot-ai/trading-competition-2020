# Trading Competition 2020 - IB Client Portal

Some basic information about how to use the IB Client Portal.

## Menu

[License](LICENSE)

[Main Readme](README.md)

[Trading Tips](TRADING.md)

[Investopedia Automation](INVESTOPEDIA.md)

[Capybara Cheat Sheet](https://gist.github.com/zhengjia/428105)

## Overview

Interactive Broker has various options for connecting to their API, none of which are particularly pretty.  It seems like the Client-Portal is the easiest to use.  It is essentially a standard HTTP REST API.

The difference is (and I assume this is for security reasons), you cannot access the API directly.  It must be accessed via a client running locally on your system.  The client connects to the remote IB API for you, and acts like a proxy.  You then send your requests to the local client which forwards your requests to IB for you and returns the results.

## Pre-requisites

As mentioned in the main readme, the IB Client Portal is written in Java.

The examples are written in Ruby.

## Starting the Client Portal

You must be in the

```bash
/ib-client-portal
```

directory.  You can then run the following command:

```bash
./bin/run.sh /root/conf.yaml
```

if you are on Mac / Linux, or:

```bash
./bin/run.bat /root/conf.yaml
```

if you are on Windows.

You can alter the basic config by editing the conf.yaml file.  You can change the port it is listening on.  The Client Portal also uses a self-signed certificate, so I prefer to disable the SSL by changing:

```yaml
  listenSsl: false
```

Otherwise you will likely get warnings about the SSL connection.  This only refers to the local port and the communication to IB is still encrypted.

## Authentication

You must login to the API by going to:

```url
https://localhost:5000
```

And the IB Client Portal will present you with a login form to use.  You put your credentials in there and after that any requests to the local API will be forwarded to the remote IB API.

The connection will be dropped unless you continually call the /tickle endpoint.

## Client Web App

The Client Portal can serve web apps up, so I have included a basic example Vue app which it will serve up.  You could if you want to code your entire algorithm in Javascript and configure it through the Vue App.

You can access the demo app by going to /vue on your local connection.

## Ruby Script

Another example of how to access the API is with a ruby script which is available at:

```bash
ib-example.rb
```

which could be run as a background process without a GUI.  I've just given a few random examples of how you could make API calls to the Client Portal.  This could be done better I imagine depending on your requirements.

## Official Documentation

I'll admit that the IB docs are not the greatest, but here they are nonetheless:

[Interactive Broker API Docs](https://www.interactivebrokers.com/api/doc.html)