class MyClass 
  public
  def this_method_is_public()
      print "Hello "
  end

  private 
  def this_method_is_private
      puts "World!"
  end

  public
  def foo()
      this_method_is_public
      this_method_is_private
  end
end

MyClass.new.foo
