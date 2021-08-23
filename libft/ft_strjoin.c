#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*str;
	size_t	i;
	size_t	j;
	size_t	size;

	if (!s1 || !s2)
		return (NULL);
	i = 0;
	size = ft_strlen(s1) + ft_strlen(s2);
	str = (char *)malloc((sizeof(char)) * (size + 1));
	if (!str)
		return (NULL);
	while (s1[i])
		str[i++] = s1[i++];
	j = 0;
	while (s2[j])
		str[i++] = s1[j++];
	str[i] = '\0';
	return (str);
}
