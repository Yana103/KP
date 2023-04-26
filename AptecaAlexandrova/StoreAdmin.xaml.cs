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
    /// Логика взаимодействия для StoreAdmin.xaml
    /// </summary>
    public partial class StoreAdmin : Page
    {
        public StoreAdmin()
        {
            InitializeComponent();
            DGridApteca.ItemsSource = AptecaEntities.GetContext().Medicines.ToList();
            UpdateClients();
        }
        private void UpdateClients()
        {
            var currentMedicines = AptecaEntities.GetContext().Medicines.ToList();

            currentMedicines = currentMedicines.Where(p => p.Name_medicines.ToLower().Contains(TBoxSearch1.Text.ToLower())).ToList();
            DGridApteca.ItemsSource = currentMedicines.OrderBy(p => p.Name_medicines).ToList();
        }

        private void TBoxSearch1_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateClients();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddAddit((sender as Button).DataContext as Medicine));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new AddAddit(null));
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var MedicineForRemoving = DGridApteca.SelectedItems.Cast<Medicine>().ToList();
            if (MessageBox.Show($"Вы действительно хотите удалить {MedicineForRemoving.Count()} ?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AptecaEntities.GetContext().Medicines.RemoveRange(MedicineForRemoving);
                    AptecaEntities.GetContext().SaveChanges();
                    UpdateClients();
                    MessageBox.Show("Удалено!");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, ToString());
                    DGridApteca.ItemsSource = AptecaEntities.GetContext().Medicines.ToList();
                }
            }
        }

        private void BtnForm_Click(object sender, RoutedEventArgs e)
        {
            this.DGridApteca.SelectAllCells();
            this.DGridApteca.ClipboardCopyMode = DataGridClipboardCopyMode.IncludeHeader;
            ApplicationCommands.Copy.Execute(null, this.DGridApteca);
            this.DGridApteca.UnselectAllCells();
            String result = Clipboard.GetData(DataFormats.CommaSeparatedValue).ToString();
            try
            {
                //StreamWriter sw = new StreamWriter("Medicines.csv");
                StreamWriter sw = new StreamWriter(new FileStream("Medicines.csv", FileMode.OpenOrCreate), Encoding.UTF32);
                sw.WriteLine(result);
                sw.Close();
                Process.Start("Medicines.csv");
            }
            catch (Exception ex)
            { }
        }
    }
}
