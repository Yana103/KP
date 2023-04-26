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
    /// Логика взаимодействия для SalesNotEdit.xaml
    /// </summary>
    public partial class SalesNotEdit : Page
    {
        public SalesNotEdit()
        {
            InitializeComponent();
            DGridSells.ItemsSource = AptecaEntities.GetContext().Cheques.ToList();
            UpdateClients();
        }
        private void UpdateClients()
        {
            var currentCheque = AptecaEntities.GetContext().Cheques.ToList();

            currentCheque = currentCheque.Where(p => p.Status.ToLower().Contains(TBoxSearch1.Text.ToLower())).ToList();
            DGridSells.ItemsSource = currentCheque.OrderBy(p => p.Status).ToList();
        }

        private void TBoxSearch1_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateClients();
        }
    }
}
