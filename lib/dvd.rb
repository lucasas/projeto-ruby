# coding: utf-8
class DVD < Midia
  def initialize(titulo, valor, categoria)
      super()
      @titulo = titulo
      @valor = valor
      @categoria = categoria
  end

  def to_s
      %Q{ Título: #{@titulo}, Valor: #{@valor} }
  end
end