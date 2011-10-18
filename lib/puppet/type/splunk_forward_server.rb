Puppet::Type.newType(:splunk_forward_server) do
  @doc="Manage a splunk forward."
  
  ensurable
  
  newparam(:name) do
    desc "The name of the server to forward to."
    validate do |value|
      unless value =~ /\w+\./
        raise ArgumentError, "Invalid forward server #{value}"
      end
    end
  end
  
end