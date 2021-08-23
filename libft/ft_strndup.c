#include "libft.h"

char	*ft_strndup(const char *s1, size_t n)
{
	char	*str;

	str = (char *)malloc(n + 1);
	if (!str)
		return (NULL);
	ft_memcpy(str, s1, n);
	str[n + 1] = '\0';
	return (str);
}
