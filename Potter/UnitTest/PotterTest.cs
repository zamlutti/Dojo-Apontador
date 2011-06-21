using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Potter;

namespace UnitTest
{
    [TestClass]
    public class PotterTest
    {
        [TestMethod]
        public void TestFullValueWithOneBook ()
        {
            Potter.Potter potter = new Potter.Potter(1);
            Assert.AreEqual(20, potter.Total());
        }


        [TestMethod]
        public void Test5PercentOffWhenTwoBooks()
        {
            Potter.Potter potter = new Potter.Potter(2);
            Assert.AreEqual(38, potter.Total());
        }

        [TestMethod]
        public void Test10PercentOffWhenThreeBooks()
        {
            Potter.Potter potter = new Potter.Potter(3);
            Assert.AreEqual(54, potter.Total());
        }

        [TestMethod]
        public void Test20PercentOffWhenFourBooks()
        {
            Potter.Potter potter = new Potter.Potter(4);
            Assert.AreEqual(64, potter.Total());
        }

        [TestMethod]
        public void Test25PercentOffWhenFourBooks()
        {
            Potter.Potter potter = new Potter.Potter(5);
            Assert.AreEqual(75, potter.Total());
        }

        [TestMethod]
        public void TestFullPriceGivenTwoEqualBooks()
        {
            var listOfBooks = new List<BookTitle>();
            listOfBooks.Add(BookTitle.Fifth);
            listOfBooks.Add(BookTitle.Fifth);
            Potter.Potter potter = new Potter.Potter(listOfBooks);
            Assert.AreEqual(40, potter.Total());
        }
    }
}
