CC = gcc
CFLAGS = -Wall -g
TARGETS = calculadora areatriangulo testeferro
REPO_URL = https://github.com/hebins

all: $(TARGETS)

calculadora: calculadora.c
    $(CC) $(CFLAGS) -o calculadora calculadora.c

areatriangulo: areatriangulo.c
    $(CC) $(CFLAGS) -o areatriangulo areatriangulo.c

testeferro: testeferro.c
    $(CC) $(CFLAGS) -o testeferro testeferro.c

run: all
    @echo "Executando calculadora:"
    ./calculadora
    @echo "\nExecutando areatriangulo:"
    ./areatriangulo
    @echo "\nExecutando testeferro:"
    ./testeferro

clean:
    rn -f calculadora areatriangulo testeferro

gitpush:
    git add calculadora.c areatriangulo.c testeferro.c Makefile
    git commit -n "Adiciona programas e Makefile"
    git push origin master
