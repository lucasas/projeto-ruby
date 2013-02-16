require 'yaml'

class BancoDeArquivos
    def salva(livro)
        File.open("livros.yml", "a") do |arquivo|
            arquivo.puts YAML.dump(livro)
            arquivo.puts ""
        end
    end
    
    def carrega
        $/ = "\n\n"
        File.open("livros.yml", "r").map do |livro_serializado|
            YAML.load livro_serializado
        end
    end
end
