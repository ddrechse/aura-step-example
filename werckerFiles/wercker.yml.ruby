# This references the default Ruby container from
# the Docker Hub.
# https://registry.hub.docker.com/_/ruby/
# If you want to use a specific version you would use a tag:
# ruby:2.2.2
box: ruby
# You can also use services such as databases. Read more on our dev center:
# http://devcenter.wercker.com/docs/services/index.html
# services:
    # - postgres
    # http://devcenter.wercker.com/docs/services/postgresql.html

    # - mongo
    # http://devcenter.wercker.com/docs/services/mongodb.html

# This is the build pipeline. Pipelines are the core of wercker
# Read more about pipelines on our dev center
# http://devcenter.wercker.com/docs/pipelines/index.html
build:
    # Steps make up the actions in your pipeline
    # Read more about steps on our dev center:
    # http://devcenter.wercker.com/docs/steps/index.html
    steps:
        - bundle-install
        - script:
            name: rspec
            code: bundle exec rspec


