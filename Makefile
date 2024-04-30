NAME = philo

FLAGS = -Wall -Werror -Wextra

FILES = 

OBJS = $(FILES:.c=.o)

all : $(NAME)

$(NAME) : $(OBJS)
	@gcc $(FLAGS) $(FILES) -o $(NAME)

$(OBJS) : $(FILES)
	@gcc $(FLAGS) -c $< -o $@

clean:
	@rm -ft $(OBJS)

fclean : clean
	@rm -fr $(NAME)

re : fclean all

.PHONY : all clean fclean re