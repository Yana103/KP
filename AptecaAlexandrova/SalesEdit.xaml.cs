using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
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
    /// Логика взаимодействия для SalesEdit.xaml
    /// </summary>
    public partial class SalesEdit : Page
    {
        public SalesEdit()
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
        private void TBoxSearch1TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateClients();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new SellsAddAddit(null));
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var ChequeForRemoving = DGridSells.SelectedItems.Cast<Cheque>().ToList();
            if (MessageBox.Show($"Вы действительно хотите удалить {ChequeForRemoving.Count()} ?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AptecaEntities.GetContext().Cheques.RemoveRange(ChequeForRemoving);
                    AptecaEntities.GetContext().SaveChanges();
                    UpdateClients();
                    MessageBox.Show("Удалено!");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, ToString());
                    DGridSells.ItemsSource = AptecaEntities.GetContext().Cheques.ToList();
                }
            }
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new SellsAddAddit((sender as Button).DataContext as Cheque));
        }

        private void BtnForm_Click(object sender, RoutedEventArgs e)
        {
            this.DGridSells.SelectAllCells();
            this.DGridSells.ClipboardCopyMode = DataGridClipboardCopyMode.IncludeHeader;
            ApplicationCommands.Copy.Execute(null, this.DGridSells);
            this.DGridSells.UnselectAllCells();
            String result = Clipboard.GetData(DataFormats.CommaSeparatedValue).ToString();
            try
            {
                //StreamWriter sw = new StreamWriter("Sells.csv");
                StreamWriter sw = new StreamWriter(new FileStream("Sells.csv", FileMode.OpenOrCreate), Encoding.UTF32);
                sw.WriteLine(result);
                sw.Close();
                Process.Start("Sells.csv");
            }
            catch (Exception ex)
            { }
        }
    }
}
