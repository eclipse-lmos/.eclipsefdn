local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-lmos') {
  settings+: {
    description: "Eclipse LMOS",
    has_discussions: true
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      has_wiki: false,
    },
    orgs.newRepo('arc') {
      description: "The Arc project utilizes the power of Kotlin DSL and Kotlin Scripting to define a language optimized for building LLM-powered solutions.",
      has_wiki: false,
      has_discussions: true
    },
    orgs.newRepo('arc-spring-init') {
      description: "A demo project for the Arc Agent Framework",
      has_wiki: false
    },
    orgs.newRepo('arc-view') {
      description: "Arc View is a UI application for Arc agents",
      has_wiki: false
    },
    orgs.newRepo('lmos-router') {
      description: "Efficient Agent Routing with SOTA Language and Embedding Models",
      has_wiki: false
    },
    orgs.newRepo('lmos-operator') {
      description: "The LMOS Operator is a Kubernetes operator designed to dynamically resolve Channel requirements based on the capabilities of installed Agents within a Kubernetes cluster.",
      has_wiki: false
    },
    orgs.newRepo('lmos-runtime') {
      description: "The LMOS Runtime facilitates dynamic agent routing and conversation handling in a multi-tenant, multi-channel environment.",
      has_wiki: false,
      has_discussions: true      
    },
    orgs.newRepo('lmos-demo') {
      description: "An LMOS demo using dev containers",
      has_wiki: false,
      has_discussions: true      
    },
    orgs.newRepo('lmos-sample-agents') {
      description: "Sample agents for deploying to an LMOS instance",
      has_wiki: false
    },
    orgs.newRepo('website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "LMOS Website",
      has_wiki: false,
    },
  ],
}
