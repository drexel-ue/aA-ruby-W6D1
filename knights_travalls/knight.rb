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

end