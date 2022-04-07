EXT_CRI		=		*.gcno *.gcda

SRC			=		main.c

SRCT		=		test_unit.c	\
					test.c

OBJ			=		$(SRC:.c=.o)

OBJT		=		$(SRCT:.c=.o)

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
	gcc -o $(NAME_CRI) $(SRCT) -lcriterion --coverage

tests_run:		units_tests
	./$(NAME_CRI)
