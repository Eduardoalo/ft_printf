/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   teste_printf.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eladeira <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/13 12:28:08 by eladeira          #+#    #+#             */
/*   Updated: 2020/03/14 17:33:19 by eladeira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>
#include "ft_printf.h"

int add(char *str, ...)
{
	va_list ap;
	int i;
	int sum;

	va_start(ap, str);

	i = 0;
	sum = 0;
	while (i < 3)
	{
		sum += va_arg(ap, int);
		i++;
	}
	va_end(ap);
	printf("%d\n", sum);
	return (sum);
}

int main(void)
{
	//char a = 'a';
	//char b = 'b';
	char *str = "Hello\rsssrr\td";
	//add(str, 1, 2, 3);
	ft_printf(str);
	return (0);
}
