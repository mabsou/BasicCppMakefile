#
# This is a basic C++ Makefile
#
# Some Reminder
# $@ is the name of the file to be made
# $< is the name of the file causing the action
#

NAME		= test

CXX 		= clang++

CXXFLAGS 	+= --std=c++11

LDFLAGS 	+=

SRCS 		= test.cpp

OBJS 		= $(SRCS:.cpp=.o)

all 		: $(NAME)

$(NAME) 	: $(OBJS)
	$(CXX) $(LDFLAGS) $(OBJS) -o $(NAME)

.cpp.o 		:
	$(CXX) $(CXXFLAGS) -c -o $@ $< #$@ is name of the file the be make

clean 		:
	rm -f $(OBJS)

fclean		: clean 
	rm -f $(NAME)

re		: fclean $(NAME)

.PHONY : all clean fclean re
