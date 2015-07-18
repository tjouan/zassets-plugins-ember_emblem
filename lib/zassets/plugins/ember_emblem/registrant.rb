require 'pathname'

require 'ember/data/source'
require 'ember/emblem/template'
require 'ember/source'

module ZAssets
  module Plugins
    module EmberEmblem
      class Registrant
        def initialize config
          @config = config
        end

        def register
          @config[:paths] << ember_vendor_path << ember_data_vendor_path
          @config[:engines][:emblem] = Ember::Emblem::Template
        end

      private

        def ember_vendor_path
          Pathname.new(Ember::Source.bundled_path_for('ember.js')).parent
        end

        def ember_data_vendor_path
          Pathname.new(Ember::Data::Source.bundled_path_for('ember-data.js'))
            .parent
        end
      end
    end
  end
end
