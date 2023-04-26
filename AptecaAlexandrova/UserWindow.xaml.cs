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
using System.Windows.Shapes;

namespace AptecaAlexandrova
{
    /// <summary>
    /// Логика взаимодействия для UserWindow.xaml
    /// </summary>
    public partial class UserWindow : Window
    {
        public UserWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainFrame;
        }

        private void Store_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new MedicinesNotEdit());
        }

        private void Sales_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new SalesNotEdit());
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw1 = new MainWindow();
            mw1.Show();
            this.Close();
        }

    }
}
