
  
class ProdutosController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin", only: :destroy
  
  def index
    @produtos = Produto.all
  end

  def show
    @produto = Produto.find(params[:id])
  end
  
  def new
    @produto = Produto.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      redirect_to @produto, notice: 'Produto foi Criado com Sucesso'
    else
      render :new
    end
    
  end
  def edit
    @produto = Produto.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @produto = Produto.find(params[:id])

    if @produto.update(produto_params)
      redirect_to @produto
    else
      render :edit
    end

    
  end
  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    redirect_to root_path
  end

  private
    def produto_params
      params.require(:produto).permit(:nome, :descricao, :classificacao, :status)
    end
end