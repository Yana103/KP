using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace AptecaAlexandrova
{
    /// <summary>
    /// Логика взаимодействия для SellsAddAddit.xaml
    /// </summary>
    public partial class SellsAddAddit : Page
    {
        private Cheque _currentCheque = new Cheque();
        public SellsAddAddit(Cheque selectedCheque)
        {
            InitializeComponent();
            if (selectedCheque != null)
                _currentCheque = selectedCheque;

            DataContext = _currentCheque;
        }

        private void BtnSaveAndExit_Click(object sender, RoutedEventArgs e)
        {
            {
                StringBuilder errors = new StringBuilder();

                if (_currentCheque.Id == 0)
                    AptecaEntities.GetContext().Cheques.Add(_currentCheque);
                try
                {
                    AptecaEntities.GetContext().SaveChanges();
                    MessageBox.Show("Информация сохранена!");
                    Manager.MainFrame.GoBack();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
    }
}
