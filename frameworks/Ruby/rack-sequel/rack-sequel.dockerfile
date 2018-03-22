FROM tfb/rack-sequel-base:latest

ENV DBTYPE=mysql
CMD bundle exec puma -C config/mri_puma.rb -b tcp://0.0.0.0:8080 -e production