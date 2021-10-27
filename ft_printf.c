/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eladeira <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/13 13:27:30 by eladeira          #+#    #+#             */
/*   Updated: 2020/03/14 17:33:21 by eladeira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "ft_printf.h"

static void	ft_putstr(char *s)
{
	int	i;

	if (s)
	{
		i = 0;
		while (s[i])
		{
			write(1, &s[i], 1);
			i++;
		}
	}
}

/* %c %d %e %f %g %i %o %s %u %x %% ou \% %s*/

/* %5d %.5d %-5d %+5d %05d % -5d*
 - left justify 
 0 leading zero fill
 + print plus on positive numbers
  invisible plus sign */

/*int	check_flag_type(char c)
{
	return (0);
}
*/

int	ft_printf(const char *str, ...)
{	
	va_list ap;
	char *n_str = (char*) str;
	
	char *flag_pos;	
	if (!str)
	{
		return (-1);
		printf("%d\n", 1);
}
	va_start(ap, str);

	if (!va_arg(ap, int))
	{
		ft_putstr(n_str);
		return (0);
	}
	if ((flag_pos = ft_strchr(n_str, '%')) != NULL)
	{
		flag_pos++;
		printf("%c\n", *flag_pos);
		return (0);
	}
	va_end(ap);
	printf("%-10.3f\n", -100.5);
	return(0);
}
