class Game
    # iniciar la el tablero
end

class Grid
    # Debe establecer el tablero
    attr_accessor :grid
    def initialize(width, height)
        @grid = Array.new(width) { Array.new(height) }
    end

    def show
        @grid.each do |row|
            row.each do |cell|
                print cell.alive
            end
            print "\n"
        end
    end

    def fill(x,y,element)
        @grid[x][y] = element
    end
end

# Definir las propiedades de una celula
class Cell
  attr_accessor :alive 
  def initialize(alive)
    @alive = alive
  end

  def alive?
    if alive == "*"
        return true
    else
        return false
    end
  end
end

# Definir los vecinos de una celula
class Neigboors
    
end # iniciar el juego

# Aplicar las reglas del juego
class Rules

end

# Iniciar el juego
class Player

end

class Random
    attr_accessor :grid
    def initialize(width, height)
        @grid = Grid.new(width, height)
        fillRandom()
    end
    def fillRandom()
        @grid.grid.each_with_index do |row,y|
            row.each_with_index do |column,x|
                random = rand(0..1)
                if random == 0
                    cell = Cell.new(".")
                    @grid.fill(x,y,cell)
                else
                    cell = Cell.new("*")
                    @grid.fill(x,y,cell)
                end
            end
        end
    end
end

random = Random.new(3,3)
random.grid.show

 