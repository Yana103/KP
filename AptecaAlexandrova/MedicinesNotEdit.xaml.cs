﻿using System;
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
    /// Логика взаимодействия для MedicinesNotEdit.xaml
    /// </summary>
    public partial class MedicinesNotEdit : Page
    {
        public MedicinesNotEdit()
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
    }
}
