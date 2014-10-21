Puppet::Type.newtype(:defprovs) do
  ensurable
  providify
  paramclass(:provider).validate do |value|
    fail ArgumentError, "Value is #{value.inspect}" unless value
  end
  newparam(:name) do
  end
end
