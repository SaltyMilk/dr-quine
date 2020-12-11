
all: Colleen Grace Sully

re: fclean all

Colleen: Colleen.cpp
	g++ -Wall -Wextra -Werror Colleen.cpp -o Colleen
Grace: Grace.cpp
	g++ -Wall -Wextra -Werror Grace.cpp -o Grace
Sully: Sully.cpp
	@mkdir SullyChilds
	g++ -Wall -Wextra -Werror Sully.cpp -o ./SullyChilds/Sully
clean:
	rm -rf Colleen Grace SullyChilds/Sully_0 SullyChilds/Sully_1 SullyChilds/Sully_2 SullyChilds/Sully_3 SullyChilds/Sully_4 SullyChilds/Sully_5
fclean: clean
	rm -rf Grace_kid.cpp SullyChilds

