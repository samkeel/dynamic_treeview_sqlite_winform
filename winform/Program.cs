using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SQLite;

namespace LoadTreeView
{
    public partial class FrmTreeView : Form
    {
        //sqlite connection string for external DB called tv
        public const string connstr = (@"Data Source=db/tv.db");
        TreeNode parentNode = null;

        public FrmTreeView()
        {
            InitializeComponent();
            SQLloadTreeView();
        }

        private void SQLloadTreeView()
        {
            DataTable dtable = new DataTable();
            using (SQLiteConnection con = new SQLiteConnection(connstr))
            {
                con.Open();
                string query = "SELECT MAINMNU, MENUPARVAL, STATUS FROM MNUPARENT";
                using (SQLiteDataAdapter adapter = new SQLiteDataAdapter(query, con))
                {
                    adapter.Fill(dtable);
                }
            }

            foreach (DataRow dr in dtable.Rows)
            {
                parentNode = treeView1.Nodes.Add(dr["MAINMNU"].ToString());
                PopulateTreeView(Convert.ToInt32(dr["MENUPARVAL"].ToString()), parentNode);
            }
        }

        private void PopulateTreeView(int parentId, TreeNode parentNode)
        {
            string seqChild = "SELECT MENUPARVAL, FRM_NAME, MNUSUBMENU FROM MNUSUBMENU WHERE MENUPARVAL = " + parentId;
            DataTable dTableChild = new DataTable();
            using (SQLiteConnection con = new SQLiteConnection(connstr))
            {
                using (SQLiteDataAdapter adapter = new SQLiteDataAdapter(seqChild, con))
                {
                    adapter.Fill(dTableChild);
                }
            }
            TreeNode childNode;

            foreach(DataRow dr in dTableChild.Rows)
            {
                if(parentNode == null)
                {
                    childNode = treeView1.Nodes.Add(dr["FRM_NAME"].ToString());
                }
                else
                {
                    childNode = parentNode.Nodes.Add(dr["FRM_NAME"].ToString());
                }
                PopulateTreeView(Convert.ToInt32(dr["MNUSUBMENU"].ToString()), childNode);
            }
        }
    }
}
