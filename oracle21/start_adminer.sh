#!/bin/bash
docker run -d --rm --init -p 8080:80 --name adminer-oracle --entrypoint /usr/bin/php dockette/adminer:oracle-12 -d memory_limit=256M -d upload_max_filesize=2048M -d post_max_size=2048M -S 0.0.0.0:80
