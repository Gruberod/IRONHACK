class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length

    @words = @text.split(" ")
    counts = @words.each_with_object(Hash.new(0)) {|word, counts| counts[word.downcase] += 1 }
    max_quantity= counts.values.max
    @most_frequent_words = counts.select { |k, v| v == max_quantity }.keys

    render "results"
  end
end
