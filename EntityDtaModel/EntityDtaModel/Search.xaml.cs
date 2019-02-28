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
    /// Interaction logic for Search.xaml
    /// </summary>
    public partial class Search : Window
    {
        public Search()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Training_12Dec18_BangaloreEntities contextObj = new Training_12Dec18_BangaloreEntities();
            Student student = new Student();
            int id = Convert.ToInt32(txt_StudentId.Text);
            //var alldetails = from Student stud in contextObj.Students
            //                 where student.Id == id
            //                 select stud;
            //student = (Student)alldetails;

            //List<Student> slist = alldetails.ToList<Student>;
            Student searchStudent = contextObj.Students.FirstOrDefault(str => str.Id == id);
            if (searchStudent != null)
            {
                txt_StudentName.Text = searchStudent.Name;
                txt_StudentCourse.Text = searchStudent.Course;
                txt_StudentDob.Text = Convert.ToString(searchStudent.DOB);
                txt_StudentGender.Text = Convert.ToString(searchStudent.Gender);
                txt_StudentPhone.Text = Convert.ToString(searchStudent.Phone);
                txt_StudentYOP.Text = Convert.ToString(searchStudent.YOP);
                MessageBox.Show(searchStudent.Name, searchStudent.Course);
            }
            else
            {
                MessageBox.Show("record not found");
            }
            
        }
    }
}
