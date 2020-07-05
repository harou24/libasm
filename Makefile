# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: haachtch <haachtch@student.codam.n>          +#+                      #
#                                                    +#+                       #
#    Created: 2020/06/28 20:22:26 by haachtch      #+#    #+#                  #
#    Updated: 2020/07/05 13:29:43 by haachtch      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a

SRC_D  = src
OBJ_D = obj
INC_D = inc

SRC =	$(SRC_D)/ft_strlen.s\
		$(SRC_D)/ft_strcpy.s\
		$(SRC_D)/ft_strcmp.s\
		$(SRC_D)/ft_strdup.s\
		$(SRC_D)/ft_write.s\
		$(SRC_D)/ft_read.s

SRC_MAIN =	$(SRC_D)/main.c

OBJ := $(SRC:$(SRC_D)/%.s=$(OBJ_D)/%.o)
OBJ_MAIN := $(SRC_MAIN:$(SRC_D)/%.c=$(OBJ_D)/%.o)

EXEC = libasm

CC = clang
CC_FLAGS = -Wall -Wextra -Werror

NASM = nasm -f macho64
AR = ar -rcs

all: $(NAME)

$(NAME): $(OBJ_D) $(OBJ) $(OBJ_MAIN)
		 $(AR) $(INC_D)/$(NAME) $(OBJ)
		 $(CC) $(CC_FLAGS) $(INC_D)/$(NAME) $(OBJ_MAIN) -o $(EXEC)

$(OBJ_D):
	mkdir -p $(OBJ_D)

$(OBJ): $(OBJ_D)/%.o: $(SRC_D)/%.s
		@$(NASM) -s $< -o $@

$(OBJ_MAIN): $(OBJ_D)/%.o: $(SRC_D)/%.c
			 @$(CC) -c $< -o $@

clean:
	rm -rf $(OBJ_D)

fclean: clean
	rm -f $(INC_D)/$(NAME)
	rm -f $(EXEC)
re: fclean all
