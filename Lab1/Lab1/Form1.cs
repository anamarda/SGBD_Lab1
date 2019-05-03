using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;

namespace Lab1
{
    public partial class Form1 : Form
    {
        SqlConnection conn;

        SqlDataAdapter daProfesori;
        SqlDataAdapter daPalarii;

        BindingSource bsProfesori;
        BindingSource bsPalarii;

        DataSet ds;

        SqlCommandBuilder cb;
        
        public Form1()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=DESKTOP-NA7JB45\\SQLEXPRESS;Initial Catalog=HogwartsSchoolSGBD;Integrated Security=True");
            daProfesori = new SqlDataAdapter("select * from Profesori", conn);
            daPalarii = new SqlDataAdapter("select * from Palarii", conn);
            ds = new DataSet();
            daProfesori.Fill(ds, "Profesori");
            daPalarii.Fill(ds, "Palarii");

            cb = new SqlCommandBuilder(daPalarii);
            ds.Relations.Add("FK_Palarii_Profesori", ds.Tables["Profesori"].Columns["Pid"], ds.Tables["Palarii"].Columns["Pid"]);

            bsProfesori = new BindingSource();
            bsProfesori.DataSource = ds;
            bsProfesori.DataMember = "Profesori";

            bsPalarii = new BindingSource();
            bsPalarii.DataSource = bsProfesori;
            bsPalarii.DataMember = "FK_Palarii_Profesori";

            dataGridView1.DataSource = bsProfesori;
            dataGridView2.DataSource = bsPalarii;
        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            daPalarii.Update(ds, "Palarii");
        }
    }
}
