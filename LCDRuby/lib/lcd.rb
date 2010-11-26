class Lcd
  def to_lcd(num)
    aux = [" _ \n| |\n|_|","   \n  |\n  |"," _ \n _|\n|_"," _ \n _|\n _|","   \n|_|\n  |"," _ \n|_ \n _|"," _ \n|_ \n|_|"," _ \n  |\n  |", " _ \n|_|\n|_|"," _ \n|_|\n _|"]
    puts aux[num]
    aux[num]
  end
end

