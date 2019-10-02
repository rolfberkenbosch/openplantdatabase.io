# coding: utf-8

Gem::Specification.new do |spec|
  spec.name                    = "freelancer-theme-jekyll"
  spec.version                 = "1.0.0"
  spec.authors                 = ["Start Bootstrap"]

  spec.summary                 = %q{Freelancer is a one page Bootstrap portfolio theme for freelancers.}
  spec.homepage                = "https://github.com/jeromelachaud/freelancer-theme"
  spec.licenses                = ["MIT"]

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|posts)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "jekyll-paginate"
  spec.add_runtime_dependency "jekyll-sitemap"
  spec.add_runtime_dependency "jekyll-gist"
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-data"
  spec.add_runtime_dependency "jemoji"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
