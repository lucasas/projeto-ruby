class Biblioteca
    attr_reader :livros

    def initialize
        @livros = {} # Inicializa com um hash
    end

    def adiciona(livro)
        @livros[livro.categoria] ||= []
        @livros[livro.categoria] << livro
    end
end

