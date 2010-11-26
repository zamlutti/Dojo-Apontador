import unittest
import program

class Test(unittest.TestCase):
	def testNumerosBasicos(self):
		self.assertEquals(1, program.romanToNumerals("I"))
		self.assertEquals(5, program.romanToNumerals("V"))
		self.assertEquals(10, program.romanToNumerals("X"))
		self.assertEquals(50, program.romanToNumerals("L"))
		self.assertEquals(100, program.romanToNumerals("C"))
		self.assertEquals(500, program.romanToNumerals("D"))
		self.assertEquals(1000, program.romanToNumerals("M"))
	def testNIequalsN(self):
		self.assertEquals(1, program.romanToNumerals("I"))
		self.assertEquals(2, program.romanToNumerals("II"))
		self.assertEquals(3, program.romanToNumerals("III"))
	def testNXequalsN(self):
		self.assertEquals(10, program.romanToNumerals("X"))
		self.assertEquals(20, program.romanToNumerals("XX"))
		self.assertEquals(30, program.romanToNumerals("XXX"))
	def testXXequals20(self):
		self.assertEquals(20, program.romanToNumerals("XX"))
	def testXIequals11(self):
		self.assertEquals(11, program.romanToNumerals("XI"))
	def testXIIequals12(self):
		self.assertEquals(12, program.romanToNumerals("XII"))
	def testIVequals4(self):
		self.assertEquals(4, program.romanToNumerals("IV"))

if __name__ == '__main__':
    unittest.main()


