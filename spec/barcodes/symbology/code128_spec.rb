# Barcodes is a RubyGem for creating and rendering common barcode symbologies.
#
# Author::    Aaron Wright  (mailto:acwrightdesign@gmail.com)
# Copyright:: Copyright (c) 2012 Infinite Token LLC
# License::  MIT License

require 'spec_helper'
require 'barcodes/symbology/code128'

describe Barcodes::Symbology::Code128 do
  describe "#new" do
    
  end

  describe "#formatted_data" do
    it "should concatenate the correct data" do
      prepared = "some prepared data".force_encoding(Encoding::UTF_8)
      checksum = "some checksum data\xF5".force_encoding(Encoding::ASCII_8BIT)

      code128 = Barcodes::Symbology::Code128.new
      code128.should_receive(:_prepared_data).and_return(prepared)
      code128.stub(:checksum).and_return(checksum)

      result = code128.formatted_data
      result.should == "some prepared datasome checksum data\xF5\xFF"
      result.encoding.should == Encoding::UTF_8
    end
  end
end