***************
DRYlib for Ruby
***************

.. image:: https://img.shields.io/badge/license-Public%20Domain-blue.svg
   :alt: Project license
   :target: https://unlicense.org/

.. image:: https://img.shields.io/travis/dryproject/drylib.rb/master.svg
   :alt: Travis CI build status
   :target: https://travis-ci.org/dryproject/drylib.rb

|

http://drylib.org

Prerequisites
=============

* `Ruby <https://en.wikipedia.org/wiki/Ruby_(programming_language)>`__
  2.4+

Features
========

Caveats
=======

Installation
============

https://rubygems.org/gems/drylib

To install the library locally, execute::

   $ gem install drylib

To uninstall the library, execute::

   $ gem uninstall drylib

Usage
=====

To load the library, do::

   require 'drylib'

Reference
=========

``core``
--------

=============== ================================================================
DRY Symbol      Ruby Symbol
=============== ================================================================
``bool``        ``DRY.bool(x)`` (function)
``char``        ``DRY.char(c)`` (function)
``complex``     ``DRY.complex(r,i)`` (function)
``float``       ``DRY.float(r)`` (function)
``float32``     ``DRY.float32(r)`` (function)
``float64``     ``DRY.float64(r)`` (function)
``int``         ``DRY.int(z)`` (function)
``int8``        ``DRY.int8(z)`` (function)
``int16``       ``DRY.int16(z)`` (function)
``int32``       ``DRY.int32(z)`` (function)
``int64``       ``DRY.int64(z)`` (function)
``int128``      ``DRY.int128(z)`` (function)
``integer``     ``DRY.integer(z)`` (function)
``natural``     ``DRY.natural(n)`` (function)
``rational``    ``DRY.rational(n,d)`` (function)
``real``        ``DRY.real(r)`` (function)
``word``        ``DRY.word(n)`` (function)
``word8``       ``DRY.word8(n)`` (function)
``word16``      ``DRY.word16(n)`` (function)
``word32``      ``DRY.word32(n)`` (function)
``word64``      ``DRY.word64(n)`` (function)
=============== ================================================================
