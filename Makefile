CC      = gcc

RM      = rm -f

CFLAGS  += -Iinc

NAME    = server

SRCS    =	src/irc_client_handler.c	\
            src/linked_list.c	        \
            src/main.c		            \
            src/network_client.c	    \
            src/network_epoll.c	        \
            src/network_server.c	    \
            src/util.c                  \
            src/irc_packet_handler.c    \
            src/irc_user.c

OBJS    = $(SRCS:.c=.o)


$(NAME):	$(OBJS)
		$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
