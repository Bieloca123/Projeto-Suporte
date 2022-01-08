class ComentariosController < ApplicationController
    def create
        @produto = Produto.find(params[:produto_id])
        @comment = @produto.comentarios.create(comentarios_params)
        redirect_to produto_path(@produto)
    end
    
    private
        def comentarios_params
          params.require(:comentario).permit(:comentario, :classificacao)
        end
end