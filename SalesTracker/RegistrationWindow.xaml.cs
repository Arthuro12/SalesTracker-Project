using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SalesTracker
{
    /// <summary>
    /// Interaktionslogik für RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : Window
    {
        //private const string LOGIN_URL = "http://localhost/SalesTracker/SetAdmin.php";
        
        public RegistrationWindow()
        {
            InitializeComponent();
        }

        private void SigninBtn_Click(object sender, RoutedEventArgs e)
        {
            string LOGIN_URL = "http://localhost/SalesTracker/SetAdmin.php";
            string result = string.Empty;

            Administrator admin = new Administrator();

            admin.Name = nameTB.Text;
            admin.Email = emailTB.Text;
            admin.Password = passwordTB.Text;

            string parameters = "name=" + admin.Name + "&e_mail=" + admin.Email + "&password=" + admin.Password;
            try
            {
                if (nameTB.Text != "" && emailTB.Text != "" && passwordTB.Text != "")
                {
                    // Send data to the API and return result
                    using (WebClient wc = new WebClient())
                    {
                        wc.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";
                        result = wc.UploadString(LOGIN_URL, parameters);

                    }
                }
                else
                {
                    MessageBox.Show("One or more field is (are) empty !");
                }           
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
            if (result != null || result != "" || result != string.Empty)
            {
                resultTB.Text = result;
            }
            else
            {
                result = "The record could´nt be create :(";
            }

        }

        private void OpenRegistrationWindow_Click(object sender, RoutedEventArgs e)
        {

        }

        private void OpenConnectionWindowBtn_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw = new MainWindow();
            mw.Show();
            this.Close();
        }
    }
}
