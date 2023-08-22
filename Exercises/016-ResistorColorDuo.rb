class ResistorColorDuo
  COLORS = {'black' => '0', 'brown' => '1', 'red' => '2', 'orange' => '3', 'yellow' => '4', 'green' => '5', 'blue' => '6', 'violet' => '7', 'grey' => '8', 'white' => '9'}

  def self.value(arr)
    (COLORS[arr[0]] + COLORS[arr[1]]).to_i
  end
end
