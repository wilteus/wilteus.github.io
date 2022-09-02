#
# See https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll
#

desc "Serve on port 4000"
task :serve do
  sh "cd docs; ../jekyll.sh jekyll serve --incremental --future --verbose --H 0.0.0.0"
end

desc "Build"
task :build do
  sh "cd docs; ../jekyll.sh jekyll build --future"
end
