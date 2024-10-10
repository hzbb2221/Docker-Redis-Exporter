#!/bin/sh
if [[ $REDIS_HOST ]]; then
	sed -i 's|REDIS_HOST|"'$REDIS_HOST'"|' start.sh
fi
if [[ $REDIS_PROT ]]; then
	sed -i 's|REDIS_PROT|"'$REDIS_PROT'"|' start.sh
fi
if [[ $REDIS_PASSWORD ]]; then
        sed -i 's|REDIS_PASSWORD|"'$REDIS_PASSWORD'"|' start.sh
fi
exec $@
