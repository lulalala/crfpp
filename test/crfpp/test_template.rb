require 'helper'

module CRFPP
  
  class TestTemplate < Test::Unit::TestCase
    
    def test_load_template_from_empty_file
      file = Tempfile.new('template')
      assert Template.new(file.path).to_s.empty?
    ensure
      file.close
      file.unlink
    end

    def test_load_template_from_file
      path = "#{FixturesRoot}/template"
      assert_equal File.open(path).read.chomp, Template.new(path).to_s.chomp
    end
    
    
  end
  
end
