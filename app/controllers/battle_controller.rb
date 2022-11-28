class BattleController < ApplicationController
  def index
  
      @bagmons = Bagmon.all
  
      if (params[:bagmon1] && params[:bagmon2]) 
        @bagmon1 = Bagmon.find(params[:bagmon1])
        @bagmon2 = Bagmon.find(params[:bagmon2])
        @rounds = []
  
        lifeBagmon1 = 100
        lifeBagmon2 = 100
        @lifes = [[lifeBagmon1, lifeBagmon2]]
        # Random bagmon attack first
        bagmonAttacking = rand(1..2) == 1 ? @bagmon1 : @bagmon2
  
  
        while (lifeBagmon1 > 0 && lifeBagmon2 > 0) do
  
          # Bagmon 1 attack bagmon 2 and remove random between 5 adn 10 life points
  
          if (bagmonAttacking == @bagmon1)
            attack = rand(5..15)
            lifeBagmon2 -= attack
            @rounds << @bagmon1.description + " attacked " + @bagmon2.description+ " and remove #{attack} life points"
            @lifes << [lifeBagmon1, lifeBagmon2]
            bagmonAttacking = @bagmon2
          else
            attack = rand(5..15)
            lifeBagmon1 -= attack
            @rounds << @bagmon2.description + " attacked " + @bagmon1.description + " and remove #{attack} life points"
            @lifes << [lifeBagmon1, lifeBagmon2]
            bagmonAttacking = @bagmon1
          end
        end
  
        # Display winner
        if (lifeBagmon1 > 0)
          @rounds << @bagmon2.description + " won!"
          @vencedor = @bagmon2
        else (lifeBagmon2 > 0)
          @rounds << @bagmon1.description + " won!"
          @vencedor = @bagmon1
        end
      end
  
    end
  
  end