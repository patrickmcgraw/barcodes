# Barcodes is a RubyGem for creating and rendering common barcode symbologies.
#
# Author::    Aaron Wright  (mailto:acwrightdesign@gmail.com)
# Copyright:: Copyright (c) 2012 Infinite Token LLC
# License::  MIT License

require 'spec_helper'
require 'barcodes'

describe Barcodes do
  describe "#create" do
    it "takes a symbology name and options and return an concrete barcode class" do
      expect(Barcodes.create('Codabar', {})).to be_a_kind_of Barcodes::Symbology::Base
      expect(Barcodes.create('Codabar', {})).to be_an_instance_of Barcodes::Symbology::Codabar
    end
    
    it "should throw an error if an unknown symbology is given" do
      expect(lambda { Barcodes.create('Codabar') }).to_not raise_error
      expect(lambda { Barcodes.create('Bad Symbology Name') }).to raise_error(ArgumentError)
    end
  end
  
  describe "#render" do
    it "should create and render a barcode with given symbology name and output string" do
      expect(Barcodes.render('Codabar')).to_not be_nil
      expect(Barcodes.render('Codabar')).to be_an_instance_of String
    end
    
    it "should throw an error if an unknown symbology is given" do
      expect(lambda { Barcodes.render('Codabar') }).to_not raise_error
      expect(lambda { Barcodes.render('Bad Symbology Name') }).to raise_error(ArgumentError)
    end
  end
end