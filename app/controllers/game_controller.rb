class GameController < ApplicationController
    def index
        @n_cards = 24
        render 'game/board'
    end
end
