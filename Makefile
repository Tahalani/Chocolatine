# SRC		=	main.c

# SRCT	=	test.c	\
# 			test_unit.c	\

# OBJ		=	$(SRC:.c=.o)

# OBJT	=	$(SRCT:.c=.o)

# NAME	=	choco

# all:	$(NAME)

# $(NAME):	$(OBJ)
# 	gcc -o $(NAME) $(OBJ)

# clean:
# 	rm -f $(OBJ)
# 	make clean -C tests/

# fclean: clean
# 	rm $(NAME)
# 	make fclean -C tests/

# re: fclean all

# tests_run:	$(OBJT)
# 	make -C tests/

EXT_CRI		=		*.gcno *.gcda

SRC			=		main.c

SRCT		=		test_unit.c	\
					test.c

OBJ			=		$(SRC:.c=.o)

OBJT		=		$(SRCT:.c=.o)

TEST_FLAG	=		-lcriterion --coverage

NAME		=		chocolatine

NAME_CRI	=		units_tests

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(NAME_CRI)
	$(RM) $(OBJT)
	$(RM) $(EXT_CRI)

re:		fclean all

units_tests:	fclean $(OBJT)
	gcc -o $(NAME_CRI) $(SRCT) $(TEST_FLAG)

tests_run:		units_tests
	./$(NAME_CRI)
