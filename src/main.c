/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   main.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: haachtch <haachtch@student.codam.n>          +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/07/02 14:14:07 by haachtch      #+#    #+#                 */
/*   Updated: 2020/07/05 17:41:36 by haachtch      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/libasm.h"
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
int		main(void)
{
	char 	*str1;
	char	*str2;
	char	*str3;
	char	*str4;
	char	*buffer;
	int		fd;

	str1 = "Hello World";
	printf("strlen    : %zu\n", strlen(str1));
	printf("ft_strlen : %zu\n", ft_strlen(str1));

	str2 = malloc(sizeof(char) * strlen(str1) + 1);
	str3 = malloc(sizeof(char) * strlen(str1) + 1);
	printf("strcpy    : |%s|\n", strcpy(str2, str1));
	printf("ft_strcpy : |%s|\n", strcpy(str3, str1));

	printf("strdup    : |%s|\n", strdup(str1));
	printf("ft_strdup : |%s|\n", ft_strdup(str1));

	str4 = ft_strdup("Another ft_strdup");
	printf("ft_strdup : |%s|\n",str4);

	printf("strcmp    :  %d\n", strcmp(str1, str4));
	printf("ft_strcmp :  %d\n", ft_strcmp(str1, str4));
	str1 = "Hello";
	str2 = "Bonjour";
	printf("strcmp    :  %d\n", strcmp(str1, str2));
	printf("ft_strcmp :  %d\n", ft_strcmp(str1, str2));
	str1 = "ZZZZZZ";
	str2 = "Hi";
	printf("strcmp    :  %d\n", strcmp(str2, str1));
	printf("ft_strcmp :  %d\n", ft_strcmp(str2, str1));
	str1 = "ABCDEFGH";
	str2 = "ABCDEFGH";
	printf("strcmp    :  %d\n", strcmp(str2, str1));
	printf("ft_strcmp :  %d\n", ft_strcmp(str2, str1));
	
	printf("write : \n");
	write(1, str1, strlen(str1));
	printf("\nft_write : \n");
	ft_write(1, str1, ft_strlen(str1));
	
	printf("\nwrite with wrong fd : \n");
	printf("write\n");
	write(-1, str1, strlen(str1));
	perror(str1);
	printf("ft_write:\n");
	write(-1, str1, strlen(str1));
	perror(str1);

	fd = open("./src/main.c", O_RDONLY);
	buffer = malloc(sizeof(char) * 400);
	printf("read : \n");
	read(fd, buffer, 400);
	printf("\n%s\n",buffer);
	printf("\nft_read : \n");
	ft_read(fd, buffer, 400);
	printf("\n%s\n",buffer);
	printf("\nread with wrong fd : \n");
	write(fd, buffer, -400);
	perror(buffer);
	write(fd, buffer, -400);
	perror(buffer);
	return (0);
}
