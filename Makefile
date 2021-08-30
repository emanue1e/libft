NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar -rcs
RM = rm -f

FILES = ft_bzero \
	ft_calloc \
	ft_atoi \
	ft_isalnum \
	ft_isalpha \
	ft_isascii \
	ft_isdigit \
	ft_isprint \
	ft_memcpy \
	ft_memmove \
	ft_memset \
	ft_memcmp \
	ft_memchr \
	ft_strchr \
	ft_strdup \
	ft_strjoin \
	ft_strlcat \
	ft_strlcpy \
	ft_strlen \
	ft_strmapi \
	ft_strncmp \
	ft_strnstr \
	ft_strrchr \
	ft_strtrim \
	ft_tolower \
	ft_toupper \
	ft_itoa \
	ft_putchar_fd \
	ft_putendl_fd \
	ft_putnbr_fd \
	ft_putstr_fd 

SRC_DIR = ./
SRC = $(addprefix $(SRC_DIR), $(addsuffix .c, $(FILES)))

OBJ_DIR = ./
OBJ = $(addprefix $(OBJ_DIR), $(addsuffix .o, $(FILES)))


.c.o: $(SRC)
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME): $(OBJ)
	$(AR) $@ $^

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY: all clean fclean re
