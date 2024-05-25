JFLAGS = -g
JC = javac

.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $+.java

CLASSES = \
	src/Main.java

deault: classes

classes: $(CLASSES:.java=.class)

clean:
	$(RM) +.class

run:
	java Main