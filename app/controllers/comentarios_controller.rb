class ComentariosController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin", only: :destroy
  def create
 	 @produto = Produto.find(params[:produto_id])
   @comment = @produto.comentarios.create(comentarios_params)
   redirect_to produto_path(@produto)
  end

	def destroy
  	@produto = Produto.find(params[:produto_id])
    @comentario = @produto.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to produto_path(@produto)
  end

  private
		def comentarios_params
  	  params.require(:comentario).permit(:comentario, :classificacao, :status)
    end
end