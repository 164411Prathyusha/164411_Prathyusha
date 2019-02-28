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

namespace EntityDtaModel
{
    /// <summary>
    /// Interaction logic for Delete.xaml
    /// </summary>
    public partial class Delete : Window
    {
        public Delete()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Training_12Dec18_BangaloreEntities contextObj = new Training_12Dec18_BangaloreEntities();
            Student student = new Student();
            int id = Convert.ToInt32(txt_StudentId.Text);
            Student searchStudent = contextObj.Students.FirstOrDefault(str => str.Id == id);
            if (searchStudent != null)
            {
                contextObj.Students.Remove(searchStudent);
                contextObj.SaveChanges();
                MessageBox.Show("RECORD DELETED SUCCESSFULLY");
            }
            else
            {
                MessageBox.Show("record not found");
            }
        }
    }
}
