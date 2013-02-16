class Biblioteca
    def initialize
        @livros = {} # Inicializa com um hash
    end

    def adiciona(livro)
        @livros[livro.categoria] ||= []
        @livros[livro.categoria] << livro
    end

    def livros
        @livros.values.flatten
    end

    def livros_por_categoria(categoria)
        @livros[categoria].each do |livro|
            yield livro if block_given?
        end
    end
end


