module Puppet::Parser::Functions
  newfunction(:set_variable) do |args|
    class_name  = args[0]
    variable    = args[1]
    value       = args[2] 

    Puppet.info("Setting #{variable} to #{value}")
    variable_scope = qualified_scope(class_name)
    variable_scope.setvar(variable,value)
  end
end
