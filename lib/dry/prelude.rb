# This is free and unencumbered software released into the public domain.

require 'bigdecimal'
require 'complex'
require 'rational'

module DRY
  # @private
  module Bounds
    CHAR   = (0..0x10ffff)
    INT8   = (-0x80..0x7f)
    INT16  = (-0x8000..0x7fff)
    INT32  = (-0x80000000..0x7fffffff)
    INT64  = (-0x8000000000000000..0x7fffffffffffffff)
    INT128 = (-0x80000000000000000000000000000000..0x7fffffffffffffffffffffffffffffff)
    WORD8  = (0..0xff)
    WORD16 = (0..0xffff)
    WORD32 = (0..0xffffffff)
    WORD64 = (0..0xffffffffffffffff)
  end

  ##
  # Boolean (`true` or `false`).
  #
  # @param  [Object] x
  # @return [Boolean]
  def self.Bool(x)
    !!x
  end

  ##
  # Character (21-bit Unicode code point).
  #
  # @param  [Integer, #ord] c
  # @return [Char]
  def self.Char(c)
    Char.new(c)
  end

  ##
  # Complex number (arbitrary size).
  #
  # @param  [Real] real
  # @param  [Real] imaginary
  # @return [Complex]
  def self.Complex(real, imaginary)
    Complex.new(real, imaginary)
  end

  ##
  # Floating-point number (native size).
  #
  # @param  [Float] r
  # @return [Float]
  def self.Float(r)
    r.to_f
  end

  ##
  # Floating-point number (32-bit single-precision).
  #
  # @param  [Float] r
  # @return [Float]
  def self.Float32(r)
    r.to_f
  end

  ##
  # Floating-point number (64-bit double-precision).
  #
  # @param  [Float] r
  # @return [Float]
  def self.Float64(r)
    r.to_f
  end

  ##
  # Integer number (native size).
  #
  # @param  [Integer] z
  # @return [Integer]
  def self.Int(z)
    self.Int64(z)
  end

  ##
  # Integer number (8-bit).
  #
  # @param  [Integer] z
  # @return [Integer]
  def self.Int8(z)
    self.Integer(z, min: Bounds::INT8.min, max: Bounds::INT8.max)
  end

  ##
  # Integer number (16-bit).
  #
  # @param  [Integer] z
  # @return [Integer]
  def self.Int16(z)
    self.Integer(z, min: Bounds::INT16.min, max: Bounds::INT16.max)
  end

  ##
  # Integer number (32-bit).
  #
  # @param  [Integer] z
  # @return [Integer]
  def self.Int32(z)
    self.Integer(z, min: Bounds::INT32.min, max: Bounds::INT32.max)
  end

  ##
  # Integer number (64-bit).
  #
  # @param  [Integer] z
  # @return [Integer]
  def self.Int64(z)
    self.Integer(z, min: Bounds::INT64.min, max: Bounds::INT64.max)
  end

  ##
  # Integer number (128-bit).
  #
  # @param  [Integer] z
  # @return [Integer]
  def self.Int128(z)
    self.Integer(z, min: Bounds::INT128.min, max: Bounds::INT128.max)
  end

  ##
  # Integer number (arbitrary size).
  #
  # @param  [Integer] z
  # @return [Integer]
  def self.Integer(z, min: nil, max: nil)
    raise TypeError, z if min && z < min
    raise TypeError, z if max && z > max
    z
  end

  ##
  # Natural number (arbitrary size).
  #
  # @param  [Integer] n
  # @return [Integer]
  def self.Natural(n)
    self.Integer(n, min: 0)
  end

  ##
  # Rational number (arbitrary size).
  #
  # @param  [Integer] numerator
  # @param  [Integer] denominator
  # @return [Rational]
  def self.Rational(numerator, denominator)
    Rational.new(numerator, denominator)
  end

  ##
  # Real number (arbitrary size).
  #
  # @param  [Float, #to_f] r
  # @return [Real]
  def self.Real(r)
    Real.new(r)
  end

  ##
  # Machine word (native size).
  #
  # @param  [Integer] n
  # @return [Integer]
  def self.Word(n)
    self.Word64(n)
  end

  ##
  # Machine word (8-bit).
  #
  # @param  [Integer] n
  # @return [Integer]
  def self.Word8(n)
    self.Integer(n, min: Bounds::WORD8.min, max: Bounds::WORD8.max)
  end

  ##
  # Machine word (16-bit).
  #
  # @param  [Integer] n
  # @return [Integer]
  def self.Word16(n)
    self.Integer(n, min: Bounds::WORD16.min, max: Bounds::WORD16.max)
  end

  ##
  # Machine word (32-bit).
  #
  # @param  [Integer] n
  # @return [Integer]
  def self.Word32(n)
    self.Integer(n, min: Bounds::WORD32.min, max: Bounds::WORD32.max)
  end

  ##
  # Machine word (64-bit).
  #
  # @param  [Integer] n
  # @return [Integer]
  def self.Word64(n)
    self.Integer(n, min: Bounds::WORD64.min, max: Bounds::WORD64.max)
  end
end # DRY

##
# Character (21-bit Unicode code point).
class DRY::Char
  ##
  # @return [Integer]
  attr_reader :codepoint

  ##
  # @param  [Integer, #ord] codepoint
  def initialize(codepoint)
    @codepoint = codepoint.ord
    unless DRY::Bounds::CHAR.include?(@codepoint)
      raise TypeError, codepoint
    end
  end

  ##
  # @return [Integer]
  def to_i(); @codepoint; end

  ##
  # @return [String]
  def to_s(); @codepoint.chr; end
end # DRY::Char

##
# Complex number (arbitrary size).
class DRY::Complex < ::Numeric
  ##
  # @return [Real]
  def real(); @value.real; end

  ##
  # @return [Real]
  def imaginary(); @value.imaginary; end

  ##
  # @param  [Real] real
  # @param  [Real] imaginary
  def initialize(real, imaginary)
    @value = Kernel.Complex(real, imaginary)
  end
end # DRY::Complex

##
# Rational number (arbitrary size).
class DRY::Rational < ::Numeric
  ##
  # @return [Integer]
  def numerator(); @value.numerator; end

  ##
  # @return [Integer]
  def denominator(); @value.denominator; end

  ##
  # @param  [Integer] numerator
  # @param  [Integer] denominator
  def initialize(numerator, denominator)
    @value = Kernel.Rational(numerator, denominator)
  end

  ##
  # @return [Float]
  def to_f(); @value.to_f; end
end # DRY::Rational

##
# Real number (arbitrary size).
class DRY::Real < ::Numeric
  ##
  # @param  [Numeric, String] value
  def initialize(value)
    @value = BigDecimal(value)
  end

  ##
  # @return [Float]
  def to_f(); @value.to_f; end
end # DRY::Real
