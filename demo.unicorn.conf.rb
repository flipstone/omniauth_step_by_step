# Note: this config is meant to be referenced from within the library directory
#   e.g.  cd library && unicorn -c ../demo.unicorn.conf.rb
#
worker_processes 1
pid '../.demo.pid'
timeout 5
stderr_path '../.demo.unicorn.stderr.log'
stdout_path '../.demo.unicorn.stdout.log'
