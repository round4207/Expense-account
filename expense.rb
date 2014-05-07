class Expense
	attr_accessor :id, :item, :amount

	def initialize(id, item, amount)
		self.id = id.to_i
		self.item = item
		self.amount = amount.to_f
	end
end