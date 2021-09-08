NAME = libft.a
CFLAGS = -Wall -Werror -Wextra -c
SOURCE = ft_bzero.c \
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
	ft_split.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_itoa.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c 

OBJ = $(SOURCE:.c=.o)

.PHONY : all clean fclean re

all: $(NAME)

$(NAME) :  $(OBJ)	
	echo "Compiling $(NAME) ..."
	gcc $(CFLAGS) $(SOURCE)
	ar rc $(NAME) $(OBJ)

clean :
	echo "Removing object files ..."
	rm -rf $(OBJ)

fclean : clean
	echo "Removing $(NAME) ..."
	rm -rf $(NAME)

re : fclean all
