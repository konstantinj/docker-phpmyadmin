#!/bin/bash

cmd_php="php -S 0.0.0.0:80 -c php.ini -t /www"

init_config() {
  cat config.php>/www/config.inc.php
  echo "<?php">/config/__config.php
  for e in $(env); do
    case $e in
      PA_*)
        e1=$(expr "$e" : 'PA_\([A-Z_]*\)')
        e2=$(expr "$e" : '\([A-Z_]*\)')
        echo "\$cfg['${e1,,}'] = getenv('$e2');">>/config/__config.php
    esac
  done
}

init_config

$cmd_php
