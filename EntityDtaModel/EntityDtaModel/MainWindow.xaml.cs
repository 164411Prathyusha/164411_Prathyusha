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

namespace EntityDtaModel
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //Training_12Dec18_BangaloreEntities contextObj = new Training_12Dec18_BangaloreEntities();

            //var studentQuery = from Student stu in contextObj.Students//all student details
            //                   select stu;
            //dgStudent.ItemsSource = studentQuery.ToList<Student>();

            //var studentQuery = from Student stu in contextObj.Students where stu.Course == "j2ee" select stu;//for specific course
            //dgStudent.ItemsSource = studentQuery.ToList<Student>();

            //string s = txt_SearchStudent.Text;
            //var studentQuery = from Student stu in contextObj.Students where stu.Course == s  select stu;//for specific course from user input
            //dgStudent.ItemsSource = studentQuery.ToList<Student>();


            //DateTime dateSearch = Convert.ToDateTime("2/2/2018");//date of birth greater than 2/2/2018
            //var studentQuery = from Student stu in contextObj.Students
            //                   where stu.DOB>dateSearch
            //                   select stu;
            //if (studentQuery.Count() > 0)//if record found then display
            //{
            //    dgStudent.ItemsSource = studentQuery.ToList<Student>();
            //}
            //else
            //    MessageBox.Show("no records");
            Search window = new Search();
            window.Show();

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Add window = new Add();
            window.Show();

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Delete window = new Delete();
            window.Show();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            Training_12Dec18_BangaloreEntities contextObj = new Training_12Dec18_BangaloreEntities();

            var studentQuery = from Student stu in contextObj.Students//all student details
                               select stu;
            dgStudent.ItemsSource = studentQuery.ToList<Student>();
        }
    }
}
