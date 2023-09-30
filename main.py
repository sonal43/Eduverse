from flask import Flask, render_template, request, redirect, url_for, session
from flask_mail import Mail, Message
import mysql.connector as mysql
import socket
from datetime import timedelta
from datetime import datetime

app = Flask(__name__)
app.secret_key = "eduverse"
app.permanent_session_lifetime = timedelta(minutes=5)
# socket.getaddrinfo('localhost',25)
app.config.update(
            MAIL_SERVER = 'smtp.gmail.com',
            MAIL_PORT = 465,
            MAIL_USE_TLS = False,
            MAIL_USE_SSL = True,
            MAIL_USERNAME = '',
            MAIL_PASSWORD = ''
        )
mail = Mail(app)
try:
    db = mysql.connect(
        host = "localhost",
        port = "3307",
        user = "root",
        password = "",
        database = "eduverse"
    )
    if db.is_connected():
        global cursor
        cursor = db.cursor()
    now = datetime.now()
    global day_of_week
    day_of_week = now.strftime('%A')
    query = f"select day from day_of_week"
    cursor.execute(query)
    rs = cursor.fetchone()
    if day_of_week != rs[0]:
        querydel = 'truncate table notes'
        cursor.execute(querydel)
        query2 = f"update day_of_week set day = '{day_of_week}'"
        cursor.execute(query2)
        db.commit()
except mysql.Error as e:
    print(e.msg)
    print("Unable to connect!")
    quit()

""" start emailing emailingmul
login login1 signup signup1
home acceptdecline reschedule reschedule1 sendemail
adminhome adminlogin
addtt addtt2
addupdate2 addupdate addstud
classtt
sortthelist sortmytt sortmynotes
classtt1
mytt notes
logout """

@app.route("/")
def start():
    if 'name' in session:
        if 'msg' in session:
            return render_template('home.html',teacher = session['name'],visible = session['visible'],msg = session['msg'])
        return render_template('home.html',teacher = session['name'],visible = session['visible'])
    return redirect(url_for('login'))

def emailing(receiver,message):
    msg = Message(
                subject = 'Lecture rescheduling request.',
                sender = '',
                recipients = [f'{receiver}'],
                body = message
            )
    mail.send(msg)
    print('Email Sent!')

def emailingmul(receiver,message):
    msg = Message(
                subject = 'Lecture rescheduling request.',
                sender = '',
                recipients = receiver,
                body = message
            )
    mail.send(msg)
    print('Email Sent!')

@app.route("/login")
def login():
    if 'name' in session:
        return redirect(url_for('home'))
    return render_template("index.html")

@app.route('/login1',methods=['POST'])
def login1():
    if 'name' in session:
        return redirect(url_for('home'))
    try:
        if request.method == 'POST':
            session.permanent = True
            id = request.form['id']
            password = request.form['password']
            query0 = f"SELECT LEFT(PASSWORD('{password}'),20) from dual"
            cursor.execute(query0)
            fetchedpass = cursor.fetchone()
            query = f"SELECT password FROM loginsignup WHERE id={id}"
            query2 = f"SELECT name FROM loginsignup WHERE id={id}"
            cursor.execute(query)
            rs = cursor.fetchone()
            if rs[0]==fetchedpass[0]:
                visible = False
                session['visible'] = visible
                cursor.execute(query2)
                rs2 = cursor.fetchone()
                session['name'] = rs2[0]
                name = session['name']
                query3 = f"select * from notifications where too = '{name}'"
                cursor.execute(query3)
                rs3 = cursor.fetchone()
                if rs3 is not None:
                    visible = True
                    session['visible'] = visible
                    session['loginfrom'] = rs3[0]
                    session['loginto'] = rs3[1]
                    session['loginclass'] = rs3[2]
                    session['logintt'] = rs3[3]
                    loginfrom = rs3[0]
                    loginclass = rs3[2]
                    logintt = rs3[3]
                    msg = f"You have a rescheduling request from {loginfrom} for the timeslot {logintt} for class {loginclass}"
                    session['msg'] = msg
                    """ return render_template('home.html',teacher = session['name'],visible = session['visible'],msg = session['msg'])
                return render_template('home.html',teacher = session['name'],visible = session['visible']) """
                return redirect(url_for('home'))
            else:
                print('NOT SUCCESSFUL')
                return redirect(url_for('login'))       
        """ else:
            if "user" in session:
                return redirect(url_for("user"))
            return render_template("login.html") """
    except mysql.Error and TypeError as e:
            print(e)
            print("Redirect issue!")
            return redirect(url_for('login'))

@app.route("/signup")
def signup():
    return render_template("signup.html")

@app.route("/signup1",methods=['POST'])
def signup1():
    try:
        if request.method == 'POST':
            name = request.form['name']
            id = request.form['id']
            email = request.form['email']
            password = request.form['password']
            confirm = request.form['confirm']
            query1 = f"insert into loginsignup values({id},'{name}','{email}',PASSWORD('{password}'))"
            query2 = f"create table `{name}` (tt varchar(30) not null primary key, class varchar(10), subject varchar(20))"
            if password == confirm:
                cursor.execute(query1)
                cursor.execute(query2)
                db.commit()
                return redirect(url_for('login'))
            else:
                return "Passwords doesn't match."
    except mysql.Error or Exception as e:
        if "Duplicate" in e:
            print("User Already exists")
            return redirect(url_for('login'))
        print(e)
        print("Insert/Create issue")
        # return redirect(url_for('login'))

@app.route("/home")
def home():
    if 'name' in session:
        if 'msg' in session:
            return render_template('home.html',teacher = session['name'],visible = session['visible'],msg = session['msg'])
        return render_template('home.html',teacher = session['name'],visible = session['visible'])
    return render_template("home.html")

@app.route("/acceptdecline",methods=['POST'])
def acceptdecline():
    if request.method == 'POST':
        value = request.form['acceptdecline']
        loginfrom = session['loginfrom']
        loginto = session['loginto']
        loginclass = session['loginclass']
        logintt = session['logintt']
        if value == 'accept':
            query = f"select email,name from loginsignup where name = '{loginfrom}'"
            cursor.execute(query)
            rs = cursor.fetchone()
            receiver = ''.join(rs[0])
            message = f"The reschedule request for class {loginclass} was ACCEPTED by {loginto}."
            emailing(receiver,message)
            #to students
            query2 = f"select email from students where class = '{loginclass}'"
            cursor.execute(query2)
            rs = cursor.fetchall()
            print(rs)
            students = [row[0] for row in rs]
            print(students)
            studmessage = f"""NOTICE!!
            Your lecture on {logintt} is rescheduled. And it will be taken by {loginto}"""
            emailingmul(students,studmessage)
        elif value == 'decline':
            query = f"select email,name from loginsignup where name = '{loginfrom}'"
            cursor.execute(query)
            rs = cursor.fetchone()
            receiver = ''.join(rs[0])
            message = f"The reschedule request for class {loginclass} was REJECTED by {loginto}."
            emailing(receiver,message)
        query0 = f"delete from notifications where too = '{loginto}'"
        cursor.execute(query0)
        db.commit()
        session.pop('msg',None)
        session['visible'] = False
    if 'msg' in session:
        return render_template('home.html',teacher = session['name'],visible = session['visible'],msg = session['msg'])
    return render_template('home.html',teacher = session['name'],visible = session['visible'])

@app.route("/reschedule",methods=['POST','GET'])
def reschedule():
    return render_template('reschedule.html')

@app.route("/proxysearch",methods=['POST','GET'])
def reschedule1():
    try:
        if request.method == 'POST':
            classs = request.form['class']
            day = request.form['day']
            timeslot = request.form['timeslot']
            tt = day.capitalize()+' '+timeslot
            session['emailclass'] = classs
            session['emailtt'] = tt
            """ query0 = f"select teacher from {classs} where tt = '{tt}'"
            cursor.execute(query0)
            rs0 = cursor.fetchone()
            if rs0 is not None:
                session['emailfrom'] = rs0[0] """
            query = f"select teacher from {classs}"
            cursor.execute(query)
            rs = cursor.fetchall()
            list = []
            sset = set()
            #  print(rs)
            for i in range(0,len(rs)):
                teacher = ''.join(rs[i])
                query = f"select class from `{teacher}` where tt='{tt}'"
                cursor.execute(query)
                rs2 = cursor.fetchone()
                if rs2 is None:
                    if teacher != session['name']:
                        sset.add(teacher)
                else:
                    print(teacher+' '+''.join(rs2))
                #print(f"select class from {a}")
            for value in sset:
                list.append(value)
            print(list)
            return render_template('proxysearch.html',list=list)
    except mysql.Error as e:
        print(e.msg)
        print('Proxysearch issue')
        return redirect(url_for('reschedule'))

@app.route('/sendemail',methods=['POST','GET'])
def sendemail():
    if request.method == 'POST':
        sendto = request.form['teacher']
        try:
            query = f"select email,name from loginsignup where name = '{sendto}'"
            cursor.execute(query)
            rs = cursor.fetchone()
            receiver = ''.join(rs[0])
            session['emailto'] = ''.join(rs[1])
            too = ''.join(rs[1])
            fromm = session['name']
            classs = session['emailclass']
            ett = session['emailtt']
            message = f"Lecture rescheduling request from {fromm} for class {classs} on {ett}"
            emailing(receiver,message)
            try:
                query = f"insert into notifications values('{fromm}','{too}','{classs}','{ett}')"
                cursor.execute(query)
                db.commit()
            except mysql.Error or Exception as e0:
                print(e0.msg)
            if 'msg' in session:
                return render_template('home.html',teacher = session['name'],visible = session['visible'],msg = session['msg'])
            return render_template('home.html',teacher = session['name'],visible = session['visible'])
        except Exception as e:
            print(e.msg)
    return redirect(url_for('reschedule'))

@app.route('/adminhome')
def adminhome():
    return render_template('admin_home.html')

@app.route('/adminlogin',methods=['POST','GET'])
def adminlogin():
    if request.method == 'POST':
        id = request.form['id']
        password = request.form['password']
        if id=='007' and password=='abc':
            return render_template('admin_home.html')
        return render_template('login.html')
    return render_template('admin_login.html')

@app.route('/addtt')
def addtt():
    return render_template('mypage.html')

@app.route('/addtt2',methods=['POST'])
def addtt2():
    if request.method == 'POST':
        global tableid
        tableid = request.form['tableid']
        id = tableid.upper()
        query = f'select * from `{id}`'
        cursor.execute(query)
        rs = cursor.fetchall()
        print(rs)
        temp = []
        for row in rs:
            tt,teacher,subject = row
            day,timeslot = tt.split(" ")
            temp.append((timeslot,day,teacher,subject))
        timetable_data = sortthelist(temp)
        list = []
        try:
            query = f"select teacher from `{tableid}`"
            cursor.execute(query)
            rs = cursor.fetchall()
            sset = set([result[0] for result in rs])
            for value in sset:
                list.append(value)
        except mysql.Error or Exception as e:
            print(e.msg)
            print('error in box of teacher values')
        return render_template('mypage.html',hid = id,data = timetable_data,list = list)
    else:
        return render_template('mypage.html')

@app.route('/addupdate2',methods=['POST'])
def addupdate2():
    global button_id
    button_id = request.args.get('id')
    return 'ok'

@app.route('/addupdate',methods=['POST'])
def addupdate():
    print(button_id)
    try:
        if request.method == 'POST':
            classs = tableid.upper()
            tt = button_id
            teacher = request.form['teacher']
            subject = request.form['subject']
            query1 = f"select teacher from `{classs}` where tt='{tt}'"
            cursor.execute(query1)
            rs = cursor.fetchone()            
            if rs is None:
                query0 = f"insert into `{teacher}` values('{tt}','{classs}','{subject}')"
                query00 = f"insert into `{classs}` values('{tt}','{teacher}','{subject}')"
                cursor.execute(query0)
                cursor.execute(query00)
                db.commit()
            else:
                delteacher = rs[0]
                query2 = f"delete from `{delteacher}` where tt='{tt}'"
                query3 = f"insert into `{teacher}` values('{tt}','{classs}','{subject}')"
                cursor.execute(query2)
                cursor.execute(query3)
                query4 = f"update `{classs}` set teacher='{teacher}',subject='{subject}' where tt='{tt}'"
                cursor.execute(query4)
                db.commit()
            return redirect(url_for('addtt'))
    except mysql.Error or Exception as e:
        print(e.msg)
        return 'Some error occured'

@app.route('/addstud',methods=['POST'])
def addstud():
    try:
        name = request.form['name']
        email = request.form['email']
        classs = request.form['class']
        query = f"insert into students values('{name}','{email}','{classs}')"
        cursor.execute(query)
        db.commit()
    except mysql.Error or Exception as e:
        print(e.msg)
    return redirect(url_for('adminhome'))

@app.route('/classtt',methods=['POST','GET'])
def classtt():
    return render_template('classtt.html')

def sortthelist(temp):
    priority_map = {
    '9to10': 1,
    '10to11': 2,
    '11_15to12_15': 3,
    '12_15to1_15': 4,
    '2to3': 5,
    '3to4': 6,
    '4to5': 7
    }
    weekday_map = {
    'Monday': 1,
    'Tuesday': 2,
    'Wednesday': 3,
    'Thursday': 4,
    'Friday': 5
    }
    sorted_list = sorted(temp, key=lambda x: (priority_map.get(x[0]), weekday_map.get(x[1])))
    priority_list = ['9to10', '10to11', '11_15to12_15', '12_15to1_15', '2to3', '3to4', '4to5']
    weekday_list = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
    result_dict = {}
    # initialize the dictionary with None values for all time slots on all weekdays
    for day in weekday_list:
        result_dict[day] = [(slot, day, None, None) for slot in priority_list]
    # update the dictionary with the elements of the sorted list
    for element in sorted_list:
        slot, day, name, subject = element
        result_dict[day][priority_list.index(slot)] = element
    # convert the dictionary to a list of tuples
    result_list = []
    for day in weekday_list:
        result_list += result_dict[day]
    return result_list

def sortmytt(temp):
    priority_map = {
    '9to10': 1,
    '10to11': 2,
    '11_15to12_15': 3,
    '12_15to1_15': 4,
    '2to3': 5,
    '3to4': 6,
    '4to5': 7
    }
    sorted_list = sorted(temp, key=lambda x: (priority_map.get(x[0],8)))
    #print('Sorted',sorted_list)
    result_list = []
    for timeslot in priority_map:
        for element in sorted_list:
            if element[0] == timeslot:
                result_list.append(element)
                break
            else:
                result_list.append([timeslot,None,None])
    #print(result_list)
    return result_list

def sortmynotes(temp):
    priority_map = {
    '9to10': 1,
    '10to11': 2,
    '11_15to12_15': 3,
    '12_15to1_15': 4,
    '2to3': 5,
    '3to4': 6,
    '4to5': 7
    }
    sorted_list = sorted(temp, key=lambda x: (priority_map.get(x[0],8)))
    result_list = []
    for timeslot in priority_map:
        for element in sorted_list:
            if element[0] == timeslot:
                result_list.append(element)
                break
            else:
                result_list.append([timeslot,None,None])
    return result_list

@app.route('/classtt1',methods=['POST'])
def classtt1():
    if request.method == 'POST':
        id = request.form['tableid']
        query = f'select * from `{id}`'
        cursor.execute(query)
        rs = cursor.fetchall()
        print(rs)
        temp = []
        for row in rs:
            tt,teacher,subject = row
            day,timeslot = tt.split(" ")
            temp.append((timeslot,day,teacher,subject))
        timetable_data = sortthelist(temp)
        return render_template('classtt.html',id = id.upper(),data = timetable_data)
    else:
        return render_template('classtt.html')

@app.route('/mytt')
def mytt():
    try:
        teacher = session['name']
        query = f"select * from `{teacher}` where tt like '{day_of_week}%'"
        cursor.execute(query)
        rs = cursor.fetchall()
        temp = []
        for row in rs:
            tt,classs,subject = row
            day,timeslot = tt.split(" ")
            temp.append((timeslot,classs,subject))
        #print(temp)
        #print('new')
        mytt = sortmytt(temp)
        temp2 = []
        query2 = f"select * from notes where teacher = '{teacher}'"
        cursor.execute(query2)
        rs2 = cursor.fetchall()
        for row2 in rs2:
            name,tt2,classs2,subject2,note = row2
            temp2.append((tt2,note))
        mynotes = sortmynotes(temp2)
        return render_template('mytt.html',day = day_of_week,data = mytt,notes = mynotes)
    except mysql.Error or Exception as e:
        print(e.msg)
        if 'msg' in session:
            return render_template('home.html',teacher = session['name'],visible = session['visible'],msg = session['msg'])
        return render_template('home.html',teacher = session['name'],visible = session['visible'])

@app.route('/notes',methods=['POST'])
def notes():
    teacher = session['name']
    place = request.args.get('place')
    tt,classs,subject,action,note = place.split('|')
    if classs == '':
        classs = None
    if subject == '':
        subject = None
    try:
        if action == 'addup':
            query = f"select * from notes where teacher = '{teacher}' and tt = '{tt}' and class = '{classs}' and subject = '{subject}'"
            cursor.execute(query)
            rs = cursor.fetchone()
            if rs is None:
                queryin = f"insert into notes values('{teacher}','{tt}','{classs}','{subject}','{note}')"
                cursor.execute(queryin)
                db.commit()
            else:
                queryup = f"update notes set note = '{note}' where teacher = '{teacher}' and tt = '{tt}' and class = '{classs}' and subject = '{subject}'"
                cursor.execute(queryup)
                db.commit()
        elif action == 'delete':
            querydel = f"delete from notes where teacher = '{teacher}' and tt = '{tt}' and class = '{classs}' and subject = '{subject}'"
            cursor.execute(querydel)
            db.commit()
    except mysql.Error or Exception as e:
        print(e.msg)
    return 'ok'

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for("login"))

if __name__ == "__main__":
    app.run()
    
""" @app.route("/user")
def user():
    if "user" in session:
        user = session["user"]
        return render_template('home.html')
    else:
        return redirect(url_for("login")) """

""" @app.route('/addtt1',methods=['POST','GET'])
def addtt1():
    try:
        if request.method == 'POST':
            classs = request.form['class']
            day = request.form['day']
            timeslot = request.form['timeslot']
            tt = day+' '+timeslot
            teacher = request.form['teacher']
            query1 = f"insert into `{classs}` values('{tt}','{teacher}')"
            query2 = f"insert into `{teacher}` values('{tt}','{classs}')"
            cursor.execute(query1)
            cursor.execute(query2)
            db.commit()
            print("Added")
            return redirect(url_for('home'))
    except mysql.Error or Exception as e:
            msg = e.msg
            if "doesn't exist" in msg:
                query3 = f"create table `{classs}` (tt varchar(30) not null primary key, teacher varchar(30))"
                query4 = f"insert into `{classs}` values('{tt}','{teacher}')"
                query5 = f"insert into `{teacher}` values('{tt}','{classs}')"  
                cursor.execute(query3)               
                cursor.execute(query4)
                cursor.execute(query5)
                db.commit()
                return redirect(url_for('addtt'))
            print(e.msg)
            print("Add issue") """

""" @app.route('/updatett1',methods=['POST','GET'])
def updatett1():
    try:
        if request.method == 'POST':
            classs = request.form['class']
            day = request.form['day']
            timeslot = request.form['timeslot']
            tt = day+' '+timeslot
            teacher = request.form['teacher']
            query1 = f"select teacher from `{classs}` where tt='{tt}'"
            cursor.execute(query1)
            rs = cursor.fetchone()
            delteacher = rs[0]
            query2 = f"delete from `{delteacher}` where tt='{tt}'"
            query3 = f"insert into `{teacher}` values('{tt}','{classs}')"
            cursor.execute(query2)
            cursor.execute(query3)
            query4 = f"update `{classs}` set teacher='{teacher}' where tt='{tt}'"
            cursor.execute(query4)
            db.commit()
            return redirect(url_for('home'))
    except mysql.Error or Exception as e:
            print(e.msg)
            print("Update issue") """

""" df = pd.DataFrame();
for x in myresult:
    df2 = pd.DataFrame(list(x)).T
    df = pd.concat([df,df2])
df.to_html("sql_to_html") """