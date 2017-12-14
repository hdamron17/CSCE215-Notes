#! /bin/bash
response="HTML document text, ASCII text"
for i in {1..20}; do
	curl -O https://cse.sc.edu/~pokeefe/unix-linux/lectures/lect${i}.ppt;
	if [[ "$(file lect${i}.ppt)" = *"$response" ]]; then
		rm lect${i}.ppt;
	fi;
done;
