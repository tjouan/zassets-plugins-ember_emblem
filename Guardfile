directories %w[features]

guard :cucumber, cli: '--format pretty --quiet', all_on_start: false do
  watch(%r{\Afeatures/.+\.feature\z})
end
