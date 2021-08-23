#include "libft.h"

size_t	ft_strlcpy(char *dst, const char *src, size_t dstsize)
{
	size_t	i;
	size_t	j;

	if (!dst || !src)
		return (0);
	i = 0;
	if (dstsize > 0)
	{
		while (src[i] && i < (dstsize - 1))
			dst[i++] = src[i++];
		dst[i] = '\0';
	}
	j = 0;
	while (src[j])
		j++;
	return (i + j);
}