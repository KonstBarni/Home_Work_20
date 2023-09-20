TARGET = ConsoleChat
PATHDICT = autocomplite/
PATHHIST = history_files/

all: $(TARGET)

$(TARGET):	Main.cpp User.o Massage.o Chat.o Dictionary.o Functions.o Trie.o WorkWithFiles.o
	g++ -o $(TARGET) Main.cpp User.o Massage.o Chat.o Dictionary.o Functions.o Trie.o WorkWithFiles.o

Main.o:	Main.cpp
	g++ -c Main.cpp

User.o:	User.cpp User.h
	g++ -c User.cpp

Massage.o:	Massage.cpp Massage.h
	g++ -c Massage.cpp

Chat.o:	Chat.cpp Chat.h
	g++ -c Chat.cpp

Dictionary.o:	$(PATHDICT)Dictionary.cpp Dictionary.o
	g++ -c $(PATHDICT)Dictionary.cpp

Functions.o:	$(PATHDICT)Functions.cpp Functions.o
	g++ -c $(PATHDICT)Functions.cpp

Trie.o:	$(PATHDICT)Trie.cpp Trie.o
	g++ -c $(PATHDICT)Trie.cpp

WorkWithFiles.o:	$(PATHHIST)WorkWithFiles.cpp WorkWithFiles.o
	g++ -c $(PATHHIST)WorkWithFiles.cpp

clean:
	rm -rf *.o