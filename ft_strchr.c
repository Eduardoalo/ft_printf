/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eladeira <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/23 12:07:17 by eladeira          #+#    #+#             */
/*   Updated: 2020/03/14 17:33:16 by eladeira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "ft_printf.h"

char	*ft_strchr(const char *str, int c)
{
	int			x;
	const char	*src;

	x = 0;
	src = str;
	while (src[x] != '\0')
	{
		if (src[x] == (char)c)
			return ((char*)&src[x]);
		x++;
	}
	if (src[x] == (char)c)
		return ((char*)&src[x]);
	return (NULL);
}
