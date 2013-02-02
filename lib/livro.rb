# coding: utf-8
class Livro
    attr_accessor :valor
    attr_reader :categoria
    attr_reader :isbn

    def eql?(outro_livro)
        @isbn == outro_livro.isbn
    end
    
    def hash
        @isbn.hash
    end

    def initialize(autor, isbn = "1", numero_de_paginas, valor, categoria)
        @autor = autor
        @isbn = isbn
        @numero_de_paginas = numero_de_paginas
        @valor = valor
        @categoria = categoria
    end

    def to_s
        "Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}, Categoria: #{@categoria}"
    end
end

