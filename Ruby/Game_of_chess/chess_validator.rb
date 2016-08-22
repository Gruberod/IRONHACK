class Chess_board
  def initialize
    @width  = 8
    @height = 8
    @size   = @width * @height
    # @fields = Array.new(@size).map.with_index do |_,i|
    #   Field.new(index_to_chess_coords(i))
    # end
    # @history = []
  end

  def staus
    
