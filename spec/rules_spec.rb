class Bowling
  def score(rolls)
    r = Rolls.new(rolls) 
    r.valid? ? "valid" : "invalid"
    r.each do |i|
     f = Frame.new(i)
      f.valid? ? "valid" : "invalid"
    end 
  end
end

class Rolls
  def initialize(frames)
    @frames = frames
  end
  def valid? 
    @frames.size < 10 ? false : true
  end
end

class Frame
  def initialize(frame)
    @frame = frame
  end
  def valid?
    @frame.size != 2 ? false : true
  end
end

describe 'Bowling Game' do
  bowling = Bowling.new
  it 'the function exist and return a correct type of value' do
    expect(bowling.score([1,2,3]).nil?).to eq false
  end
  it 'Each game, or "line" of bowling, includes ten turns, or "frames" for the bowler.' do
    expect(bowling.score([1,2,3,4,5,6,7,8,9])).to eq('invalid')
  end
  it 'has not two tries in each frame' do
    expect(bowling.score([[1],[1],[1],[1],[1],[1],[1],[1],[1],[3,6]])).to eq "invalid"
  end
  it 'has two tries in each frame' do
    expect(bowling.score([[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[3,6]])).to eq "valid"
  end
  it ''

end
