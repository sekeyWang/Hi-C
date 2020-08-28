# Hi-C data processing

## Init

1. Initiate the submodules (clone repositories)
```
git submodule init

git submodule update
```
2. Build docker containers
```
make all
```

## Methods

### Armatus

1. Prepare datafile

```
make armatus
```

2. Exec docker container

```
docker-compose exec armatus bash
```
3. How to build

```
chmod +x entrypoint.sh
./entrypoint.sh
```

4. Test
```
chmod +x test.sh
./test.sh
```

### Arrowhead

1. Prepare datafile

```
make arrowhead
```

2. Exec docker container

```
docker-compose exec arrowhead bash
```


3. Test method

```
chmod +x test.sh
./test.sh
```