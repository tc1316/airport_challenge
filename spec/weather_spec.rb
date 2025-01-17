require "weather"

describe Weather do
  subject(:normal_weather) { described_class.new(Weather::STORM_ODDS+1) }
  subject(:stormy_weather) { described_class.new(Weather::STORM_ODDS) }

  it { is_expected.to respond_to(:stormy?) } 

  it "will return stormy if storm odds are met" do
    expect(stormy_weather.stormy?).to eq(true)
  end

  it "will not return stormy if storm odds are not met" do
    expect(normal_weather.stormy?).to eq(false)
  end

end
