#! ruby -Ks

class Responder
  def initialize( name )
    @name = name
  end

   def name
     return @name
   end
end

class Sherry
   def initialize( name )
     @name = name
     @responder = Responder.new('What')
   end

   def name
     return @name
   end
end

if $0 == __FILE__ 
  require 'minitest/autorun'

  class TestResponder < MiniTest::Unit::TestCase
    def setup
      @responder = Responder.new('What')
    end

    def test_name
      assert_equal 'What', @responder.name
    end
  end

  class TestSherry < MiniTest::Unit::TestCase
    def setup
      @sherry = Sherry.new( "Sakura" )
    end

    def test_name
      assert_equal "Sakura", @sherry.name
    end

  end
end


__END__
