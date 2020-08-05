using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PracticaFinal
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var subscribers = Connect();

            DataTable table = new DataTable();
            table.Columns.Add("Name");
            table.Columns.Add("Last Name");
            table.Columns.Add("Age");
            table.Columns.Add("Email");
            table.Columns.Add("Password");
            table.Columns.Add("Collegiate Number");
            table.Columns.Add("Province where he practice");
            table.Columns.Add("Specialty");

            foreach (BsonDocument doc in subscribers)
            {
                var name = "";
                var last_name = "";
                var age = "";
                var email = "";
                var password = "";
                var collegiate_number = "";
                var province_practice = "";
                var specialty = "";

                if (doc.Contains("name")) name += doc.GetValue("name");
                if (doc.Contains("last_name")) last_name += doc.GetValue("last_name");
                if (doc.Contains("age")) age += doc.GetValue("age");
                if (doc.Contains("email")) email += doc.GetValue("email");
                if (doc.Contains("password")) password += doc.GetValue("password");
                if (doc.Contains("collegiate_number")) collegiate_number += doc.GetValue("collegiate_number");
                if (doc.Contains("province_practice")) province_practice += doc.GetValue("province_practice");
                if (doc.Contains("specialty")) specialty += doc.GetValue("specialty");

                table.Rows.Add(name, last_name, age, email, password, collegiate_number, province_practice, specialty);
            }
            DataGrid1.DataSource = table;
            DataGrid1.DataBind();
        }

        public static IEnumerable<BsonDocument> Connect()
        {
            MongoClient dbClient = new MongoClient("mongodb+srv://CarlosX:FUOX2j6n3L59ZOyQ@clustercarlos.6ziak.mongodb.net/medicine_journal?retryWrites=true&w=majority");
            IMongoDatabase database = dbClient.GetDatabase("medicine_journal");
            var subscribers = database.GetCollection<BsonDocument>("subscribers");
            var documents = subscribers.Find(new BsonDocument()).ToList();
            return documents;
        }
    }
}
