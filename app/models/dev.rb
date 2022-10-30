class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        self.freebies.find_by(item_name: item_name) ? true : false

        # OR YOU COULD DO THIS...
        # self.freebies.any? do |freebie|
        #     freebie.item_name == item_name
        #   end
    end

    def give_away(dev, freebie)
        freebie.update(dev: dev) unless freebie.dev != self
    end
end
