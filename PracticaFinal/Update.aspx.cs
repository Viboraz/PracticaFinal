using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaFinal
{
    public partial class Update : System.Web.UI.Page
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


        protected void Submit_Button_Click(object sender, EventArgs e)
        {
            MongoClient dbClient = new MongoClient("mongodb+srv://CarlosX:FUOX2j6n3L59ZOyQ@clustercarlos.6ziak.mongodb.net/medicine_journal?retryWrites=true&w=majority");
            IMongoDatabase database = dbClient.GetDatabase("medicine_journal");
            var subscribers = database.GetCollection<BsonDocument>("subscribers");
            var filter = Builders<BsonDocument>.Filter.Eq("collegiate_number", selectedcollegiate_numberbox.Text);

            var doc = subscribers.Find(filter).FirstOrDefault();

            if (doc == null)
            {
                iscollegiate_number.Text = "Collegiate Number NOT found: " + selectedcollegiate_numberbox.Text;
            }
            else
            {
                iscollegiate_number.Text = "Collegiate Number found: " + selectedcollegiate_numberbox.Text;
                Submit_Button.Text = "Update";

                if (namebox.Text != "")
                {
                    var updatename = Builders<BsonDocument>.Update.Set("name", namebox.Text);
                    subscribers.UpdateOne(filter, updatename);
                    updatedname.Text = "Name has been updated to " + namebox.Text;
                }
                if (last_namebox.Text != "")
                {
                    var updatelast_name = Builders<BsonDocument>.Update.Set("last_name", last_namebox.Text);
                    subscribers.UpdateOne(filter, updatelast_name);
                    updatedlast_name.Text = "Last Name has been updated to " + last_namebox.Text;
                }
                if (agebox.Text != "")
                {
                    var updateage = Builders<BsonDocument>.Update.Set("age", agebox.Text);
                    subscribers.UpdateOne(filter, updateage);
                    updatedage.Text = "Age has been updated to " + agebox.Text;
                }
                if (emailbox.Text != "")
                {
                    var updateemail = Builders<BsonDocument>.Update.Set("email", emailbox.Text);
                    subscribers.UpdateOne(filter, updateemail);
                    updatedemail.Text = "Email has been updated to " + emailbox.Text;
                }
                if (passwordbox.Text != "")
                {
                    var updatepassword = Builders<BsonDocument>.Update.Set("password", passwordbox.Text);
                    subscribers.UpdateOne(filter, updatepassword);
                    updatedpassword.Text = "Password has been updated to " + passwordbox.Text;
                }
                if (province_practicebox.Text != "")
                {
                    var updateprovince_practice = Builders<BsonDocument>.Update.Set("province_practice", province_practicebox.Text);
                    subscribers.UpdateOne(filter, updateprovince_practice);
                    updatedprovince_practice.Text = "Province where he practice has been updated to " + province_practicebox.Text;
                }
                if (specialtybox.Text != "")
                {
                    var updatespecialty = Builders<BsonDocument>.Update.Set("specialty", specialtybox.Text);
                    subscribers.UpdateOne(filter, updatespecialty);
                    updatedspecialty.Text = "Specialty has been updated to " + specialtybox.Text;
                }
            }
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