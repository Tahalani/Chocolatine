SRC		=	main.c

OBJ     =	$(SRC:.c=.o)

NAME    =	choco

all:    $(NAME)

$(NAME):	$(OBJ)
	gcc -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm $(NAME)

re: fclean all
