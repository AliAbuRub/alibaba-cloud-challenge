import mysql.connector
from flask import Flask, request
import numpy as np
import subprocess

cdt_columns = ['name', 'id', 'degree', 'field_of_study', 'university', 'graduation_year', 'courses',
           'health_history', 'intersts', 'car', 'house', 'job', 'city', 'country', 'date_of_birth', 
           'family_members', 'company_coords']


app = Flask(__name__)


@app.route('/', methods=['GET'])
def return_data():
        id = request.args.get('id')
        cnx = mysql.connector.connect(
                host="rm-l4vtsmuu203976dh4.mysql.me-central-1.rds.aliyuncs.com",
                user="admin_account",
                password="Admin@2023",
                database="mysql"
        )

        cursor = cnx.cursor()
        query = f"SELECT * FROM new_schema.data WHERE id = \"{id}\""
        cursor.execute(query)
        result = cursor.fetchall()
        cnx.close()
        process = subprocess.Popen(["./ossutil64", "sign",f"oss://cdt-bucket/{id}.jpg"], stdout=subprocess.PIPE)
        img, _ = process.communicate()
        img = img.decode('utf-8').strip()
        img = img.split("\n\n")[0]
        img = img.replace('%'," ")
        result= dict(zip(cdt_columns, np.array(result[0]).T))
        result['intersts'] = eval(result['intersts'])
        result['intersts'] =  {k: result['intersts'][k] for k in list(result['intersts'])[:5]}
        result['courses'] = eval(result['courses'])
        result['image'] = img
        return result
        
        

if __name__ == '__main__':
        app.run(host='0.0.0.0', port=80, debug=True)

