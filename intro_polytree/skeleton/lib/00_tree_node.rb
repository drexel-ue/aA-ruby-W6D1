class PolyTreeNode

    attr_accessor :value, :children
    attr_reader :parent

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node = nil)
        @parent.children.delete(self) if @parent != nil
        @parent = node 
        node.children << self if node != nil && !node.children.include?(self)
    end

end