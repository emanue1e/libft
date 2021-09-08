/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: etorrefi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/07 18:35:16 by etorrefi          #+#    #+#             */
/*   Updated: 2021/09/07 18:35:18 by etorrefi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	unsigned int	i;
	unsigned int	j;

	if (!*needle)
		return ((char *)haystack);
	i = 0;
	while (haystack[i] && i < len)
	{
		j = 0;
		if (haystack[i] == needle[j])
		{
			while (i + j < len && haystack[i + j] == needle[j])
			{
				j++;
				if (!needle[j])
					return ((char *)&haystack[i]);
			}
		}
		i++;
	}
	return (0);
}
