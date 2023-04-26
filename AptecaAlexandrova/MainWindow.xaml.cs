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
using System.Windows.Threading;

namespace AptecaAlexandrova
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Pass.IsEnabled = false;
            Code.IsEnabled = false;
            Refresh.IsEnabled = false;
            Login.IsEnabled = false;
            Log.Focus();
        }

        private void Log_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                using (var db = new AptecaEntities())
                {
                    var number = db.Users.AsNoTracking().FirstOrDefault(m => m.Login ==
   Log.Text.Trim());
                    if (number == null)
                    {
                        MessageBox.Show("Такого логина не существует!");
                    }
                    else
                    {
                        Pass.IsEnabled = true;
                        Log.IsEnabled = false;
                        Pass.Focus();

                    }
                }
            }
        }

        private void Pass_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                using (var db = new AptecaEntities())
                {
                    var password = db.Users.AsNoTracking().FirstOrDefault(m => m.Login ==
   Log.Text.Trim() & (m.Password == Pass.Password));
                    if (password == null)
                    {
                        MessageBox.Show("Такого пароля не существует, попробуйте снова");
                    }
                    else
                    {
                        Pass.IsEnabled = false;
                        gencode();
                        Code.Focus();

                    }
                }
            }
        }
        DispatcherTimer timer = new DispatcherTimer();
        string code;
        private void gencode()
        {
            code = null;
            Random random = new Random();
            string[] massiveCharacters = new string[] { "1", "2", "3", "4", "5", "6", "7", "8" };
            for (int i = 0; i < 4; i++)
                code += massiveCharacters[random.Next(0, massiveCharacters.Length)];
            if (MessageBox.Show(code.ToString(), "Code", MessageBoxButton.OK,
    MessageBoxImage.Warning) == MessageBoxResult.OK)
            {
                timer.Interval = TimeSpan.FromSeconds(10);
                timer.Tick += Timer_Tick;
                timer.Start();
                Code.IsEnabled = true;
                Login.IsEnabled = true;
                Refresh.IsEnabled = true;
            }
        }

        void Timer_Tick(object sender, EventArgs e)
        {
            code = null;
            MessageBox.Show("Код сброшен. Повторите попытку");
            timer.Stop();
        }

        private void Refresh_Click(object sender, RoutedEventArgs e)
        {
            timer.Stop();
            gencode();
            Code.Focus();
        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {
            if (code == Code.Text)
            {
                timer.Stop();
                using (var db = new AptecaEntities())
                {
                    var user = db.Users.AsNoTracking().FirstOrDefault(u => u.Login == Log.Text && u.Password == Pass.Password);
                    if (user.RoleId == 1)
                    {
                        AdminWindow kurs = new AdminWindow();
                        kurs.Show();
                        Application.Current.MainWindow.Close();
                    }
                    else
                    {
                        UserWindow kurs2 = new UserWindow();
                        kurs2.Show();
                        Application.Current.MainWindow.Close();
                    }
                }
            }

            else
            {
                timer.Stop();
                MessageBox.Show("Код неверный");
            }
        }

        private void ClearBut_Click(object sender, RoutedEventArgs e)
        {
            Log.Clear();
            Pass.Clear();
            Code.Clear();
            Log.IsEnabled = true;
            Pass.IsEnabled = false;
            Code.IsEnabled = false;
            Login.IsEnabled = false;
            Refresh.IsEnabled = false;
            Log.Focus();

        }
    }
}
