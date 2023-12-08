# vim: syntax=ruby

github.dismiss_out_of_range_messages

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("This PR is classed as Work in Progress. Please do not merge it yet.") if github.pr_title.include? "WIP"

if !github.pr_labels.include?("No Danger")
  swiftlint.config_file = ".swiftlint.yml"
  swiftlint.binary_path = `which swiftlint`.chomp
  swiftlint.max_num_violations = 20
  swiftlint.filter_issues_in_diff = true
  swiftlint.lint_files(
    inline_mode: true, 
    additional_swiftlint_args: "--force-exclude --lenient --no-cache"
  )
end
