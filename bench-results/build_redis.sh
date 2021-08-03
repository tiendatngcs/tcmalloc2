REDIS_SRC=$1
TCMALLOC_BIN=$2

echo "Make sure you run below"
echo make USE_JEMALLOC=no MALLOC_LIB=-L$TCMALLOC_BIN -ltcmalloc

cd $REDIS_SRC
make USE_JEMALLOC=no MALLOC_LIB=-L$TCMALLOC_BIN -ltcmalloc

echo export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:$TCMALLOC_BIN
