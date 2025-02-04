package policy.aws.packs
not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.without_vpc.v1.ec2_outside_vpc[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  parameters := {
    "allowed_subnets": set()
  }

  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.whitelist_subnets.v1.ec2_whitelist_subnets[violation]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.network.security_group.ingress_restrict_public_access.v1.ingress_restrict_public_access[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  parameters := {
    "allowed_security_groups": set()
  }

  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.whitelisted_security_groups.v1.ec2_whitelist_security_groups[violation]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.rds.publicly_accessible.v1.prohibit_publicly_accessible_db_instance[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  parameters := {
    "allowed_ami_ids": set()
  }

  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.whitelist_ami.v1.ec2_whitelist_amis[violation]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.iam.restrict_hardcoded_credentials.v1.restrict_hardcoded_credentials[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  parameters := {
    "allowed_ips": set()
  }

  data.global.systemtypes["terraform:2.0"].library.provider.aws.s3.whitelisted_ingress_ip.v1.bucket_policy_with_whitelisted_ips[violation]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.s3.unencrypted_bucket_object.v1.unencrypted_s3_bucket_object[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.s3.unencrypted.v1.unencrypted_s3_bucket[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.s3.logging_enabled.v1.logging_enabled[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  parameters := {
    "allowed_acls": set()
  }

  data.global.systemtypes["terraform:2.0"].library.provider.aws.s3.whitelisted_acls.v1.whitelist_s3_acls[violation]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.s3.restrict_asterisk_in_bucket_policy.v1.restrict_all_actions_in_bucket_policy[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.iam.restrict_iam_user_policy_attachment.v1.restrict_attaching_iam_user_policy[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  parameters := {
    "allowed_regions": set()
  }

  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.whitelist_region.v1.ec2_whitelist_region[violation]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.iam.iam_password_policy.v1.strict_iam_password_policy[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.without_imds_v2.v1.vulnerable_imds_config[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.ebs_not_encrypted.v1.ebs_not_encrypted[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.s3.versioning_enabled.v1.versioning_enabled[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.instance_volume_deletion.v1.volume_deletion[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.without_encrypted_volume.v1.ec2_without_encrypted_volume[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.iam.restricted_policy.v1.restricted_iam_policy[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  parameters := {
    "allowed_ports": set()
  }

  data.global.systemtypes["terraform:2.0"].library.provider.aws.network.security_group.whitelisted_ports.v1.security_group_with_whitelisted_ports[violation]
    with data.library.parameters as parameters

  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}

not_configured[decision] {
  data.global.systemtypes["terraform:2.0"].library.provider.aws.ec2.ebs_enable_snapshot.v1.ec2_ebs_enable_snapshot[violation]
  decision := {
    "allowed": false,
    "message": violation.message,
    "metadata": violation.metadata
  }
}
