#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmaze <tmaze@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/01 10:47:54 by tmaze             #+#    #+#              #
#    Updated: 2019/03/01 11:24:32 by tmaze            ###   ########.fr        #
#                                                                              #
#******************************************************************************#

.PHONY = all clean fclean re

EMACSF =	comments.el			\
			dockerfile-mode.el	\
			header.el			\
			init.el				\
			list.el				\
			string.el			\
			yaml-mode.el		\
			.myemacs

all: emacs zsh

~/.emacs.d:
	mkdir ~/.emacs.d

emacs: $(EMACSF) ~/.emacs.d
	cp ./*.el ~/.emacs.d
	cp ./.myemacs ~/.

zsh: .zshrc
	cp ./.zshrc ~/.

clean:
	rm -f ~/.emacs.d/*
	rm -f ~/.zshrc

fclean: clean
	rm -f ~/.emacs.d/

re: fclean all
