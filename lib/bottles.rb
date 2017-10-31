class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting_count, ending_count)
    multiple_verses = ""
    for i in ending_count..starting_count
      if i == ending_count
        multiple_verses = "#{verse(i)}"
      else
        multiple_verses = "#{verse(i)}\n#{multiple_verses}"
      end
    end
    multiple_verses
  end

  def verse(count)
    "#{verse_one(count)}\n#{verse_two(count)}\n"
  end

  def verse_one(count)
    if count == 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{bottle_text(count)} of beer on the wall, #{bottle_text(count)} of beer."
    end
  end

  def verse_two(count)
    if count == 1
      "Take it down and pass it around, no more bottles of beer on the wall."
    elsif count == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, #{bottle_text(count - 1)} of beer on the wall."
    end
  end

  def bottle_text(count)
    "#{count} #{bottle_word(count)}"
  end

  def bottle_word(count)
    if count == 1
      "bottle"
    else
      "bottles"
    end
  end
end
