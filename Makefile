bin/partials2json.js: partials2json.js | bin
	echo '#!/usr/bin/env node' | cat - $< > $@

partials2json.js: partials2json.coffee
	coffee -c $<

bin:
	mkdir -p $@
