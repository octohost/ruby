FROM octohost/base:trusty

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys C3173AA6; \
  echo 'deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main' > /etc/apt/sources.list.d/brightbox-ruby-ng-trusty.list; \
  apt-get update && apt-get install -y ruby2.1 ruby2.1-dev && apt-get clean; \
  update-alternatives --set ruby /usr/bin/ruby2.1 --no-install-recommends --no-install-suggests && update-alternatives --set gem /usr/bin/gem2.1; \ 
  gem install foreman bundler --no-ri --no-rdoc; \
  rm -rf /var/lib/apt/lists/*
