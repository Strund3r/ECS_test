echo -ne '\t\t\t\e[1;4;38;5;226m#.                                       \e[0m   \e[2m(3%)\e[22m\r'

sleep 1

nodejs_version=$(nodejs -v)
bundler_version=$(bundler -v)

echo -ne '\t\t\t\e[1;4;38;5;226m##\e[1;4;38;5;56m#.#.#.#.#.#.#.#.#.#.#.#                    \e[0m  \e[2m(35%)\e[22m\r'

sleep 1

ruby_version=$(ruby -v)
rails_version=$(rails -v)

echo -ne '\t\t\t\e[1;4;38;5;226m##\e[1;4;38;5;56m###################\e[1;4;38;5;196m#.#.#.#.#.#.#.#.#.#.\e[0m  \e[2m(76%)\e[22m\r'

sleep 100

echo -ne '\t\t\t\e[1;4;38;5;226m##\e[1;4;38;5;56m###################\e[1;4;38;5;196m####################\e[0m \e[2m(100%)\e[22m\r'

sleep 100

echo -ne '\n\n\n'
