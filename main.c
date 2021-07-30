/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cwhis <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/30 20:02:05 by cwhis             #+#    #+#             */
/*   Updated: 2021/07/30 21:36:36 by cwhis            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

int	main(void)
{
	char	*s1 = "";
	char	*s2 = malloc(30001);
	memset(s2, '@', 30000);
	s2[30000] = '\0';
	printf("-----------ft_strlen-----------\n");
	printf("ft_strlen:\t%lu\nstrlen:\t\t%lu\n",
		ft_strlen(s1), strlen(s1));
	printf("ft_strlen:\t%lu\nstrlen:\t\t%lu\n",
		ft_strlen(s2), strlen(s2));

	printf("-----------ft_strcpy-----------\n");
	char dst[]= "sdgasdsdfds";
	char *src = "01";
	printf("ft_strcpy:\t%s\nstrcpy:\t\t%s\n", ft_strcpy(dst,src), strcpy(dst, src));

	printf("-----------ft_strcmp-----------\n");
	char *str1 = "qwertyas";
	char *str2 = "qwerty";
	printf("ft_strcmp:\t%d\nstrcmp:\t\t%d\n", ft_strcmp(str1,str2), strcmp(str1, str2));

	printf("-----------ft_write------------\n");
	printf("write:\t\t%zd\n", write(25, str1, 3));
	printf("errno:\t\t%d\n", errno);
	printf("ft_write:\t%zd\n", ft_write(25, str1, 3));
	printf("errno:\t\t%d\n", errno); 

	printf("-----------ft_read-------------\n");
	char buff[50];
	printf("read:\t\t%zd\n", read(0, buff, 5));
	printf("errno:\t\t%d\n", errno);
	printf("ft_read:\t%zd\n", ft_read(0, buff, 5));
	printf("errno:\t\t%d\n", errno);

	printf("-----------ft_strdup-----------\n");
	printf("strdup:\t\t%s\n", strdup("asdadsdfas"));
	printf("ft_strdup:\t%s\n", ft_strdup("asdadsdfas"));
	return (0);
}