Puppet::Type.type(:defprovs).provide(:first) do
  def self.instances
    [new({
      :ensure   => :present,
      :name     => "first",
      :provider => :first,
    })]
  end
  def self.prefetch(resources)
    defprovs = instances
    resources.keys.each do |name|
      if provider = defprovs.find { |defprov| defprov.name == name }
        resources[name].provider = provider
      end
    end
  end
  def exists?
    true
  end
end
