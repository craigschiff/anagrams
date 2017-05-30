require 'rspec/autorun'
require_relative '../models/checkAnagram.rb'

describe "CheckAnagram" do
  let (:check_anagram)  {CheckAnagram.new('dogs', 'cats')}

  describe '#initialize' do
    it 'is an instance of CheckAnagram' do
      expect(check_anagram).to be_an_instance_of(CheckAnagram)
    end
  end

  describe '#store_chars' do
    it 'stores each letter of the string in the store' do
      check_anagram.store_chars
      expect(check_anagram.store['g']).to eq(1)
      expect(check_anagram.store['s']).to eq(1)
      expect(check_anagram.store['f']).to eq(0)
    end
  end

  describe '#check_anagram' do
    it 'checks if the words are anagrams' do
      check_anagram.store_chars
      check_anagram.check_anagram
      expect(check_anagram.anagram).to eq(false)
    end
  end

  let (:anagram2)  {CheckAnagram.new('dogs', 'gods')}

  describe '#check_anagram' do
    it 'checks if the words are anagrams' do
      anagram2.store_chars
      anagram2.check_anagram
      expect(anagram2.anagram).to eq(true)
    end
  end

  let (:anagram3)  {CheckAnagram.new('easy', 'saey')}

  describe '#check_anagram' do
    it 'checks if the words are anagrams' do
      anagram3.store_chars
      anagram3.check_anagram
      expect(anagram3.anagram).to eq(true)
    end
  end

  let (:anagram4)  {CheckAnagram.new('easy', 'saeyr')}

  describe '#check_anagram' do
    it 'is false if the words are different lengths' do
      anagram4.store_chars
      anagram4.check_anagram
      expect(anagram4.anagram).to eq(false)
    end
  end


end
