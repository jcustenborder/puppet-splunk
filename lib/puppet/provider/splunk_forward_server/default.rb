Puppet::Type.type(:splunk_forward_server).provide(:splunk) do
  desc "manage forward-servers for a splunk server."

  def create
    return false
  end
 
  def destroy
    return false
  end
 
  def exists?
    fail("this is just a default, it should not actually be used")
  end
end