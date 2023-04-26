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
    /// Логика взаимодействия для AddAddit.xaml
    /// </summary>
    public partial class AddAddit : Page
    {
        private Medicine _currentMedicine = new Medicine();
        public AddAddit(Medicine selectedMedicine)
        {
            InitializeComponent();
            if (selectedMedicine != null)
                _currentMedicine = selectedMedicine;

            DataContext = _currentMedicine;
        }

        private void BtnSaveAndExit_Click(object sender, RoutedEventArgs e)
        {
            {
                StringBuilder errors = new StringBuilder();

                if (_currentMedicine.Id == 0)
                    AptecaEntities.GetContext().Medicines.Add(_currentMedicine);
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
        private void TextBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
        }
    }
}
