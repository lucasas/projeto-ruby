# coding: utf-8
class DVD < Midia
    attr_reader :titulo

    include FormatadorMoeda

    formata_moeda :valor_com_desconto, :valor

    def initialize(titulo, valor, categoria)
        super()
        @titulo = titulo
        @valor = valor
        @categoria = categoria
    end
end

