NAME = libft.a
CFLAGS = -Wall -Werror -Wextra
SRC = ft_bzero.c \
	ft_calloc.c \
	ft_atoi.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_memcmp.c \
	ft_memchr.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_itoa.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c 

OBJ = $(SRC:.c=.o)

.PHONY : all clean fclean re

all : $(NAME)

$(NAME) :  $(OBJ)	
	@echo "Compiling \033[42m$(NAME)\033[0m..."
	@gcc $(CFLAGS) -c $(SOURCE)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean :
	@echo "Removing object files ..."
	@rm -rf $(OBJ)

fclean : clean
	@echo "Removing $(NAME) ..."
	@rm -rf $(NAME)

re : fclean all