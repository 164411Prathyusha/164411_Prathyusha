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
    /// Interaction logic for Add.xaml
    /// </summary>
    public partial class Add : Window
    {
        public Add()
        {
            InitializeComponent();
        }

        private void Txt_sAdd_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Training_12Dec18_BangaloreEntities contextObj = new Training_12Dec18_BangaloreEntities();
                Student newstudent = new Student();
                ////adding new stdent details entity -harcoded values
                //newstudent.Name = "varsha";
                //newstudent.Course = "C";
                //newstudent.DOB = Convert.ToDateTime("1996/12/11");
                //newstudent.Phone = Convert.ToInt64("9123445678");
                //newstudent.Gender = "F";
                //newstudent.YOP = Convert.ToInt16("2018");

                //adding from user input
                newstudent.Name = txt_sName.Text;
                newstudent.Course = txt_sCourse.Text;
                newstudent.DOB = Convert.ToDateTime(txt_sDOB.Text);
                newstudent.Phone = Convert.ToInt64(txt_sPhone.Text);
                newstudent.Gender = txt_sGender.Text;
                newstudent.YOP = Convert.ToInt16(txt_sYOP.Text);

                //adding details to DB
                contextObj.Students.Add(newstudent);
                contextObj.SaveChanges();
                MessageBox.Show("student added ");
            }
            catch(Exception ex)
            {
                MessageBox.Show("could not add" + ex.Message);
            }
        }
    }
}
