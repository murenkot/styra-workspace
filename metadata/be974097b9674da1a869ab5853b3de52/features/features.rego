package metadata.be974097b9674da1a869ab5853b3de52.features

# Stack rules can make exceptions through the system's feature module.  The following shows an example 
# of an exception definition in this policy:

# exceptions := {"rule.1", "rule.2"}

# The recommended exception name should uniquely identify the rule between the system and its stacks.
# This example uses the following naming convention: "<rule name>.<id>"

# In a stack policy, apply the exception with the following:

# features := data.metadata[data.self.metadata.system_id].features

# enforce[decision] {
#   not features.exceptions["rule.1"]
#
#   decision := {
#     "allow": true
#   }
# } 

# For more infomation, see https://docs.styra.com/policies/policy-organization/stacks/overview#feature-flags 



