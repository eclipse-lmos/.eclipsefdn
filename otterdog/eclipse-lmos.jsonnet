local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-lmos') {
  settings+: {
    description: "",
  },
  _repositories+:: [
    orgs.newRepo('.github'),
    orgs.newRepo('arc') {
      # customize as needed
    },
    orgs.newRepo('website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Lmos website",
    },
  ],
}
