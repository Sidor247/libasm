CC=gcc
NASM=nasm
NFLAGS=-f macho64
GFLAGS=-Wall -Wextra -Werror
NAME=libasm.a
TEST_NAME=test
MAKEFILE=Makefile
HEADER=libasm.h
S_SRCS=ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
C_SRCS=main.c
S_OBJS=$(S_SRCS:.s=.o)
C_OBJS=$(C_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(C_OBJS) $(S_OBJS) $(MAKEFILE) $(HEADER)
	ar rc $(NAME) $(S_OBJS)
	$(CC) $(GFLAGS) $(C_OBJS) $(NAME) -o $(TEST_NAME)

%.o: %.s
	$(NASM) $(NFLAGS) $^

clean:
	rm -rf $(S_OBJS)
	rm -rf $(C_OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f $(TEST_NAME)

re: fclean all

.PHONY: all clean fclean re