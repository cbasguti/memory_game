class GameController < ApplicationController
    def index
        @n_cards = 24
        @image_paths = [
            'backs/cplus.png',
            'backs/cplus.png',
            'backs/java.png',
            'backs/java.png',
            'backs/php.png',
            'backs/php.png',
            'backs/rails.png',
            'backs/rails.png',
            'backs/javascript.png',
            'backs/javascript.png',
            'backs/python.png',
            'backs/python.png',
            'backs/csharp.png',
            'backs/csharp.png',
            'backs/ruby.png',
            'backs/ruby.png',
            'backs/cplus.png',
            'backs/cplus.png',
            'backs/java.png',
            'backs/java.png',
            'backs/javascript.png',
            'backs/javascript.png',
            'backs/ruby.png',
            'backs/ruby.png',
            # Agrega aquí las rutas de las imágenes restantes
          ]
        @classes = [
            'cplus',
            'cplus',
            'java',
            'java',
            'php',
            'php',
            'rails',
            'rails',
            'javascript',
            'javascript',
            'python',
            'python',
            'csharp',
            'csharp',
            'ruby',
            'ruby',
            'cplus',
            'cplus',
            'java',
            'java',
            'javascript',
            'javascript',
            'ruby',
            'ruby',
            # Agrega aquí las rutas de las imágenes restantes
          ]
        render 'game/board'
    end

    def sock
      ActionCable.server.broadcast('messages_channel', {
        messages: "Hola tonto"
      })
      render 'game/sock'
  end
end
