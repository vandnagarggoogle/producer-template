load("//cloud/oneproducerstack/easysaas/deployments/common/build/oci:build_rules.bzl", "easysaas_oci")

easysaas_oci(
    name = "tpp-rp-blueprint",
    srcs = [
        "tpp_rp/input.tfvars",
        "tpp_rp/main.tf",
        "tpp_rp/outputs.tf",
        "tpp_rp/providers.tf",
        "tpp_rp/variables.tf",
    ],
    engine_type = "inframanager",
    engine_version = "1.5.7",
    image_tags = ["0.0.2"],
    repository = "us-central1-docker.pkg.dev/networkservices-staging/blueprints-repo/image",
)

easysaas_oci(
    name = "agent-gateway-blueprint",
    srcs = [
        "agent_gateway/main.tf",
        "agent_gateway/outputs.tf",
        "agent_gateway/providers.tf",
        "agent_gateway/variables.tf",
    ],
    engine_type = "inframanager",
    engine_version = "1.5.7",
    image_tags = ["0.0.2"],
    repository = "us-central1-docker.pkg.dev/networkservices-staging/blueprints-repo/image",
)

easysaas_oci(
    name = "authz-blueprint",
    srcs = [
        "authz/main.tf",
        "authz/outputs.tf",
        "authz/providers.tf",
        "authz/variables.tf",
    ],
    engine_type = "inframanager",
    engine_version = "1.5.7",
    image_tags = ["0.0.2"],
    repository = "us-central1-docker.pkg.dev/networkservices-staging/blueprints-repo/image",
)
