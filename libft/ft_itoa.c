#include "libft.h"

static int	ft_get_digits(int n)
{
	if ((n / 10) == 0)
		return (1);
	else
		return (ft_get_digits(n / 10) + 1);
}

char	*ft_itoa(int n)
{
	char	*str;
	int	i;
	unsigned int	nbr;

	str = (char *)malloc(sizeof(char) * (ft_get_digits(n) + 5));
	if (!str)
		return (NULL);
	nbr = n;
	i = ft_get_digits(n);
	if (nbr < 0)
	{
		str[0] = '-';
		nbr = -(unsigned int)n;
	}
	while (i > 0)
	{
		i--;
		str[i] = nbr % 10 + '0';
		nbr /= 10;
	}
	return (str);
}
