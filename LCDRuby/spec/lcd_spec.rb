require "lib/lcd"
describe "Lcd" do  
  it "given 1 return lcd_1" do
    Lcd.new.to_lcd(1).should == "   \n  |\n  |"
  end
  it "given 2 return lcd_2" do
    Lcd.new.to_lcd(2).should == " _ \n _|\n|_"
  end
  it "given 3 return lcd_3" do
    Lcd.new.to_lcd(3).should == " _ \n _|\n _|"
  end
  it "given 4 return lcd_4" do
    Lcd.new.to_lcd(4).should == "   \n|_|\n  |"
  end
  it "given 5 return lcd_5" do
    Lcd.new.to_lcd(5).should == " _ \n|_ \n _|"
  end
  it "given 6 return lcd_6" do
    Lcd.new.to_lcd(6).should == " _ \n|_ \n|_|"
  end
  it "given 7 return lcd_7" do
    Lcd.new.to_lcd(7).should == " _ \n  |\n  |"
  end
  it "given 8 return lcd_8" do
    Lcd.new.to_lcd(8).should == " _ \n|_|\n|_|"
  end
   it "given 9 return lcd_9" do
    Lcd.new.to_lcd(9).should == " _ \n|_|\n _|"
  end
   it "given 0 return lcd_0" do
    Lcd.new.to_lcd(0).should == " _ \n| |\n|_|"
  end
end