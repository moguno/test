require "rubygems"
require "wunderlist"

module Plugin::Test
  class World < Diva::Model
    register(:test, name: "test")

    field.string(:user, required: true)
    field.string(:password, required: true)

    field.has(:icon, Diva::Model, required: true)
    field.string(:slug, required: true)
    field.string(:title, required: true)

    def initialize(hash)
      super({
        :slug => :test,
        :title => "test",
      }.merge(hash))
    end
  end
end
