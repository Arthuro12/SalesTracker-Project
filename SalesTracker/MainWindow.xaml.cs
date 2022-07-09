using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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

namespace SalesTracker
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private const string LOGIN_URL = "http://localhost/SalesTracker/GetAdmin.php";

        public MainWindow()
        {
            InitializeComponent();
        }

        private void OpenRegistrationWindow_Click(object sender, RoutedEventArgs e)
        {
            RegistrationWindow rw = new RegistrationWindow();
            rw.Show();
            this.Close();
        }

        private void connectBtn_Click(object sender, RoutedEventArgs e)
        {

            string urlParams = "?e_mail=" + emailTB.Text + "&password=" + passwordTB.Text;
            HttpWebRequest wr = (HttpWebRequest)WebRequest.Create(LOGIN_URL + urlParams);
            wr.Method = "GET";
            var content = string.Empty;
            using (var response = (HttpWebResponse)wr.GetResponse())
            {
                using (var stream = response.GetResponseStream())
                {
                    using (var sr = new StreamReader(stream))
                    {
                        content = sr.ReadToEnd();
                    }
                }
                
            }
            if (content == null || content == "" || content == string.Empty)
            {
                adminNameTB.Text = "ERROR !!";
            }
            else
            {
                adminNameTB.Text = content;
            }

        }
    }
}
