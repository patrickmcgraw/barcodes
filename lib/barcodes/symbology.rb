require 'barcodes/symbology/codabar'
require 'barcodes/symbology/code11'
require 'barcodes/symbology/code39'
require 'barcodes/symbology/code39mod43'
require 'barcodes/symbology/code39extended'
require 'barcodes/symbology/code39extendedmod43'
require 'barcodes/symbology/code93'
require 'barcodes/symbology/code93extended'
require 'barcodes/symbology/msi'
require 'barcodes/symbology/msimod10'
require 'barcodes/symbology/msimod11'
require 'barcodes/symbology/standard2of5'
require 'barcodes/symbology/standard2of5mod10'
require 'barcodes/symbology/interleaved2of5'
require 'barcodes/symbology/interleaved2of5mod10'
require 'barcodes/symbology/planet'
require 'barcodes/symbology/postnet'

module Barcodes
  module Symbology
    CODABAR = 'codabar'
    CODE_11 = 'code_11'
    CODE_39 = 'code_39'
    CODE_39_MOD_43 = 'code_39_mod_43'
    CODE_39_EXTENDED = 'code_39_extended'
    CODE_39_EXTENDED_MOD_43 = 'code_39_extended_mod_43'
    CODE_93 = 'code_93'
    CODE_93_EXTENDED = 'code_93_extended'
    MSI = 'msi'
    MSI_MOD_10 = 'msi_mod_10'
    MSI_MOD_11 = 'msi_mod_11'
    STANDARD_2_OF_5 = 'standard_2_of_5'
    STANDARD_2_OF_5_MOD_10 = 'standard_2_of_5_mod_10'
    INTERLEAVED_2_OF_5 = 'interleaved_2_of_5'
    INTERLEAVED_2_OF_5_MOD_10 = 'interleaved_2_of_5_mod_10'
    PLANET = 'planet'
    POSTNET = 'postnet'
  end
end