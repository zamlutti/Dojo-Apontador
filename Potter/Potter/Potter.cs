using System.Collections.Generic;

namespace Potter
{
    public class Potter
    {
        private readonly IList<BookTitle> _listOfBooks;
        private readonly int _books;
        private const double InitialPrice = 20.0;
        private static readonly Dictionary<int, double> Discounts = new Dictionary<int, double>
                                                        {
                                                            {1,1},
                                                            {2,0.95},
                                                            {3,0.90},
                                                            {4,0.80},
                                                            {5,0.75}
                                                        }; 

        public Potter(int books)
        {
            _books = books;
        }

        public Potter(IList<BookTitle> listOfBooks)
        {
            _listOfBooks = listOfBooks;
        }

        public double Total()
        {
            List<BookTitle> listOfUniqueBooks = new List<BookTitle>();
            foreach (var book in _listOfBooks)
            {
                if (!listOfUniqueBooks.Contains(book))
                {
                    listOfUniqueBooks.Add(book);
                }
            }
            return InitialPrice * _books * Discounts[_books];
        }
    }

    public enum BookTitle
    {
        First,
        Second,
        Third,
        Fourth,
        Fifth
    }
}