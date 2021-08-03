class ApplicationController < ActionController::Base
    before_action :valida_logado

    def valida_logado
      if cookies[:allos_sistemas_admin].present?
        hash_admin = JSON.parse(cookies[:allos_sistemas_admin])
      if hash_admin["id"].present?
        administradores = Administrador.where(id: hash_admin["id"]) 
        if administradores.count > 0 
          @administrador = administradores.first
          return 
        end  
       end
     end        
       redirect_to "/login"     
    end   
end
