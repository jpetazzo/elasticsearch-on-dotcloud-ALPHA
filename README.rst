ElasticSearch On DotCloud (ALPHA)
=================================

This is an **ALPHA** (i.e., not production-ready) ElasticSearch stack
for DotCloud.


How It Works
------------

This downloads an ElasticSearch build from the official download site.
The build is not totally DotCloud-compliant (it uses all the default build
options, instead of trying to setup the logs/data/etc. directories in the
proper place).

Again: **don't use this for production!**

Proper ElasticSearch support will come soon.


How To Use It (Standalone)
--------------------------

Just use our (un)patented Clone-And-DotCloud-Push method::

  git clone git://github.com/jpetazzo/elasticsearch-on-dotcloud-ALPHA.git
  dotcloud push sofa elasticsearch-on-dotcloud-ALPHA

At the end of the push, the URL to ElasticSearch will be shown.
Give it a few extra seconds to start up (don't panic if hitting the
URL within the first minute after the push yields an error page).


How To Use It (In Your App)
---------------------------

Add the ``dotcloud.yml`` supplied here to your own ``dotcloud.yml``,
and copy the ``builder`` script to your repository as well. Push as
usual. Rejoice (but remember not to put any important stuff into
your ElasticSearch yet).


Authentication
--------------

By default, there is **NO** authentication. Anyone knowing its URL
can acccess your ElasticSearch. You can setup authentication yourself if
you need to. And of course, when ElasticSearch will be officially supported,
authentication will be pre-configured by default, like for other
DotCloud-supported database stacks.
