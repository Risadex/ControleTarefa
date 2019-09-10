using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControleTarefa
{
    public partial class CadastroTarefa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string descricao = Descricao.Text;
            DateTime dataAtividade = DateTime.Parse(DataAtividade.Text);
            DateTime dataEntrega = DateTime.Parse(DataEntrega.Text);
            DateTime dataLimiteEntrega = DateTime.Parse(DataLimiteEntrega.Text);
            string diagnostico = Diagnostico.Text;

            if(dataEntrega > dataLimiteEntrega)
            {
                
            }
            if (dataEntrega == dataLimiteEntrega)
            {

            }

            if (dataEntrega < dataLimiteEntrega)
            {
                TarefaDBEntities contextTarefa = new TarefaDBEntities();
                TB_TAREFA tableTarefa = new TB_TAREFA();

                tableTarefa.descricao = descricao;
                tableTarefa.dataAtividade = dataAtividade;
                tableTarefa.dataEntrega = dataEntrega;
                tableTarefa.dataLimiteEntrega = dataLimiteEntrega;
                tableTarefa.diagnostico = diagnostico;

                contextTarefa.TB_TAREFA.Add(tableTarefa);

                contextTarefa.SaveChanges();
            }
        }
    }
}