/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   main.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: haachtch <haachtch@student.codam.n>          +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/07/02 14:14:07 by haachtch      #+#    #+#                 */
/*   Updated: 2020/07/05 13:35:57 by haachtch      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/libasm.h"
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
int		main(void)
{
	char *str4 = "Hello World, this is a success yeah";

	printf("|%zu|\n", ft_strlen(str4));
	char *str = malloc(sizeof(5));
	char *str1 = "\xff\xff";
	char *str2 = "\xff";
	int res = ft_strcmp(str1, str2);
	printf("|%d|\n",res);
	printf("|%d|\n", strcmp(str1, str2));
	char *cpy = ft_strdup(str4);
	printf("%s\n", cpy);
	ft_write(1, "salut\n", 6);
	char *buffer = malloc(sizeof(char) * 300);
	int fd = open("./src/main.c", O_RDONLY);
	ft_read(fd, buffer, 299);
	printf("%s\n",buffer);
	return (0);
}
