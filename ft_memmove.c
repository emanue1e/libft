/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: etorrefi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/07 18:34:05 by etorrefi          #+#    #+#             */
/*   Updated: 2021/09/07 18:34:07 by etorrefi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	unsigned char	*dest;
	unsigned char	*source;

	dest = (unsigned char *)dst;
	source = (unsigned char *)src;
	if (dest <= source)
		ft_memcpy(dest, source, len);
	else if (dest > source)
	{
		while (len--)
			(dest)[len] = (source[len]);
	}
	return (dst);
}
