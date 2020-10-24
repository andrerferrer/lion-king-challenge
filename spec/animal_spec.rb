require_relative '../animal'

describe Animal do

	describe "#initialize" do
	  it "creates an Animal instance" do
	    animal = Animal.new("Babe")
	    expect(animal).to be_an(Animal)
	  end
	end

	describe "::taxonomy_classes" do
	  it "returns the six taxonomy classes of the animal kingdom" do
	    taxonomy_classes = Animal.taxonomy_classes
	    expect(taxonomy_classes.size).to eq(6)
	  end

	  it "includes the Mammals class of the animal kingdom" do
	    taxonomy_classes = Animal.taxonomy_classes
	    expect(taxonomy_classes).to include('Mammals')
	  end
	end

	describe "#eat" do
	  it "returns a sentence stating the animal is eating some food" do
	    animal = Animal.new("Babe")
	    sentence = animal.eat("a carrot")
	    expect(sentence).to eq("Babe eats a carrot")
	  end
	end

end