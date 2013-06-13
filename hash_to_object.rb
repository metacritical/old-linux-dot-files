class HashToObject
  def initialize(params)
    self.extend to_module(params)
  end

  private

  def to_module(params)
    Module.new do
      params.each do |key, value|
        define_method key do
          value
        end
      end
    end
  end
end

params = {
  one: 1,
  two: 2,
  three: 3,
}

p HashToObject.new(params).two
