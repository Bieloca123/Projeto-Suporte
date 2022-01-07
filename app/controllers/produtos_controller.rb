class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
  end

  def show
    @produto = Produto.find(params[:id])
  end
  
  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      redirect_to @produto, notice: 'Produto foi Criado com Sucesso'
    else
      render :new
    end
  end
  private
  def produto_params
    params.require(:produto).permit(:nome, :descricao, :classificacao)
  end
end