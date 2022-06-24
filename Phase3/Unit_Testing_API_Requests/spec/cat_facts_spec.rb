require 'cat_facts'

RSpec.describe CatFacts do
    it 'Returns facts about cats' do
        fake_requester = double(:requester)
        allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")
        ).and_return('{"fact":"In one stride, a cheetah can cover 23 to 26 feet (7 to 8 meters).","length":65}')
        cat_facts = CatFacts.new(fake_requester)
        result = cat_facts.provide
        expect(result).to eq "Cat fact: In one stride, a cheetah can cover 23 to 26 feet (7 to 8 meters)."
    end
end