require "jruby-stemmer/version"

# Mixes in String#stem using java implementation
module JRuby
  module Stemmer
    require "jruby"
    # include_package 'org.tartarus.martin.porter_stemmer'
    require_relative "java-stemmer"

    def self.stem string
      stemmer = Java::OrgTartarusMartinPorter_Stemmer::Stemmer.new
      java_string = string.to_java_string
      stemmer.add java_string.toCharArray, java_string.length
      stemmer.stem
      stemmer.to_string
    end

    module StringStem
      def stem
        JRuby::Stemmer.stem(self)
      end
    end
    String.__send__ :include, StringStem

  end
end
