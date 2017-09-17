***************
DRYlib for Ruby
***************

.. image:: https://img.shields.io/badge/license-Public%20Domain-blue.svg
   :alt: Project license
   :target: https://unlicense.org/

.. image:: https://img.shields.io/travis/dryproject/drylib.rb/master.svg
   :alt: Travis CI build status
   :target: https://travis-ci.org/dryproject/drylib.rb

.. image:: https://img.shields.io/gem/v/drylib.svg
   :alt: RubyGems gem version
   :target: https://rubygems.org/gems/drylib

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
``bool``        ``DRY.Bool(x)`` (function)
``char``        ``DRY.Char(c)`` (function), ``DRY::Char`` (class)
``complex``     ``DRY.Complex(r,i)`` (function), ``DRY::Complex`` (class)
``float``       ``DRY.Float(r)`` (function)
``float32``     ``DRY.Float32(r)`` (function)
``float64``     ``DRY.Float64(r)`` (function)
``int``         ``DRY.Int(z)`` (function)
``int8``        ``DRY.Int8(z)`` (function)
``int16``       ``DRY.Int16(z)`` (function)
``int32``       ``DRY.Int32(z)`` (function)
``int64``       ``DRY.Int64(z)`` (function)
``int128``      ``DRY.Int128(z)`` (function)
``integer``     ``DRY.Integer(z)`` (function)
``natural``     ``DRY.Natural(n)`` (function)
``rational``    ``DRY.Rational(n,d)`` (function), ``DRY::Rational`` (class)
``real``        ``DRY.Real(r)`` (function), ``DRY::Real`` (class)
``word``        ``DRY.Word(n)`` (function)
``word8``       ``DRY.Word8(n)`` (function)
``word16``      ``DRY.Word16(n)`` (function)
``word32``      ``DRY.Word32(n)`` (function)
``word64``      ``DRY.Word64(n)`` (function)
=============== ================================================================
