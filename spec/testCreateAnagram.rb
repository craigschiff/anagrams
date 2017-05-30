require 'rspec/autorun'
require_relative '../models/createAnagram.rb'

describe "CreateAnagram" do
  let (:create_anagram)  {CreateAnagram.new('cheese', 'crackers')}

  describe '#initialize' do
    it 'is an instance of CreateAnagram' do
      expect(create_anagram).to be_an_instance_of(CreateAnagram)
    end
  end

  describe '#store_chars' do
    it 'stores each letter of the string in the store' do
      create_anagram.store_chars(create_anagram.string2)
      expect(create_anagram.store['k']).to eq(1)
      expect(create_anagram.store['r']).to eq(2)
    end
  end

  describe '#count_changes' do
    it 'counts the characters needed to create an anagram' do
      create_anagram.create
      expect(create_anagram.counter).to eq(5)
    end
  end

  let (:anagram2)  {CreateAnagram.new('zzz', 'baloney')}

  describe '#count_changes' do
    it 'counts the characters needed to create an anagram' do
      anagram2.create
      expect(anagram2.counter).to eq(7)
    end
  end

    let (:anagram3)  {CreateAnagram.new('rrrsssdddttt', 'redroute')}

    describe '#count_changes' do
      it 'counts the characters needed to create an anagram' do
        anagram3.create
        expect(anagram3.counter).to eq(8)
      end
    end

  end
