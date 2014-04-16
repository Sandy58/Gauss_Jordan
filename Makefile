compile:
	@for ARCHIVO in `ls src/ | grep .erl`;\
    	do\
            erlc -I include/ -o ebin/ src/$$ARCHIVO;\
            echo "erlc -I include/ -o ebin/ $$ARCHIVO";\
	done
start:
	erl -pa ebin/
clear:
	rm -rf ebin/*.beam
