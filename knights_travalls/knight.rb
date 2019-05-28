require_relative 'polytreenode'

class KnightPathFinder

    def self.build_move_tree(root_node)

    end

    def self.valid_moves(position)
        x, y = position
        [[x, y + 1], [x + 1, y + 1], [x + 1, y], [x + 1, y - 1], [x, y - 1], [x - 1, y -1], [x - 1, y], [x - 1, y + 1]]
    end

    def initialize(position)
        @root_node = PolyTreeNode.new(position)
        @considered_positions = [position]
    end

    def new_move_positions(position)
        valid_positions = KnightPathFinder.valid_moves(position).select { |pos| !@considered_positions.include?(pos) }
        @considered_positions += valid_positions
        valid_positions
    end

end