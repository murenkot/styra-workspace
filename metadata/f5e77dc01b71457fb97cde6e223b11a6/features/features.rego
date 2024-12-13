package metadata.f5e77dc01b71457fb97cde6e223b11a6.features

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
erfwds = 9