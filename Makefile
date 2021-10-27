# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eladeira <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/11 12:35:14 by eladeira          #+#    #+#              #
#    Updated: 2020/03/13 16:24:38 by eladeira         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

C = ft_printf.c		\
	
O = ft_printf.o		\

H = ft_printf.h

FLAG = -Wall 		\
	   -Wextra 		\
	   -Werror

CB = \

OB = \
	 
all: $(NAME)

$(NAME):
	gcc -c $(FLAG) $(C) -I $(H)
	ar rc $(NAME) $(O)
	ranlib $(NAME)

clean:
	rm -f $(O) $(OB)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean


