package com.example.test.se_project;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.widget.Toast;

import java.util.concurrent.CopyOnWriteArrayList;


public class DataBaseHelper extends SQLiteOpenHelper
{
    public static final String DATABASE="Library.db";
    //register database attributes and register table
    public static final String REGISTER_TABLE="REGISTER_TABLE";
    public static final String REGISTER_USERNAME="USERNAME";
    public static final String REGISTER_PASSWORD="PASSWORD";
    public static final String REGISTER_EMAIL="EMAIL";
    //adding student attributes and student table
    public static final String STUDENT_TABLE="STUDENT";
    public static final String STUDENT_ID="SID";
    public static final String STUDENT_FNAME="FNAME";
    public static final String STUDENT_LNAME="LNAME";
    public static final String STUDENT_COURSE="COURSE";
    public static final String STUDENT_ADDRESS="ADDRESS";
    //adding book attributes and books database
    public static final String BOOKS_TABLE="BOOKS";
    public static final String BOOKS_ISBN="BOOKS_ISBN";
    public static final String BOOKS_TITLE="BOOKS_TITLE";
    public static final String BOOKS_TYPE="BOOKS_TYPE";
    public static final String BOOKS_AUTHOR_NAME="BOOKS_AUTHOR_NAME";
    public static final String BOOKS_QUANTITY="BOOKS_QUANTITY";
    public static final String BOOKS_EDITION="BOOKS_EDITION";
    public static final String BOOKS_PRICE="BOOKS_PRICE";
    public static final String BOOKS_PAGES="BOOKS_PAGES";
    public static final String BOOKS_PUB_NAME="BOOKS_PUB_NAME";
    public static final String BOOKS_PUB_ADDRESS="BOOKS_PUB_ADDRESS";
    public static final String BOOKS_EMAIL="BOOKS_EMAIL";
    public static final String BOOKS_CONTACT="BOOKS_CONTACT";
    //DATA BASE FOR CHECKIN AND CHECKOUT
    public static final String CIN_COUT_TABLE="CIN_COUT_TABLE";
    public static final String CIN_COUT_SID="CIN_COUT_SID";
    public static final String CIN_COUT_ISBN="CIN_COUT_ISBN";
    public static final String CIN_COUT_TITLE="CIN_COUT_TITLE";
    public static final String CIN_COUT_MM="CIN_COUT_MM";
    public static final String CIN_COUT_DD="CIN_COUT_DD";
    public static final String CIN_COUT_YY="CIN_COUT_YY";
    public static final String CIN_COUT_DUE="CIN_COUT_DUE";


    public DataBaseHelper(Context context)
    {
        super(context, DATABASE, null,5);
        SQLiteDatabase db=this.getWritableDatabase();
    }

    @Override
    public void onCreate(SQLiteDatabase db)
    {
        db.execSQL("CREATE TABLE "+REGISTER_TABLE+"("+REGISTER_USERNAME+" TEXT,"+REGISTER_PASSWORD+" TEXT,"+REGISTER_EMAIL+" TEXT);");
        db.execSQL("CREATE TABLE "+STUDENT_TABLE+"("+STUDENT_ID+" TEXT,"+STUDENT_FNAME+" TEXT,"+STUDENT_LNAME+" TEXT,"+STUDENT_COURSE+" TEXT,"+STUDENT_ADDRESS+" TEXT)");
        db.execSQL("CREATE TABLE "+BOOKS_TABLE+"("+BOOKS_ISBN+" TEXT,"+BOOKS_TITLE+" TEXT,"+BOOKS_TYPE+" TEXT,"+BOOKS_AUTHOR_NAME+" TEXT,"+BOOKS_QUANTITY+" TEXT,"+BOOKS_EDITION+" TEXT,"+BOOKS_PRICE+" TEXT,"+BOOKS_PAGES+" TEXT,"+BOOKS_PUB_NAME+" TEXT,"+BOOKS_PUB_ADDRESS+" TEXT,"+BOOKS_EMAIL+" TEXT,"+BOOKS_CONTACT+" TEXT)");
        db.execSQL("CREATE TABLE "+CIN_COUT_TABLE+"("+CIN_COUT_SID+" TEXT,"+CIN_COUT_ISBN+" TEXT,"+CIN_COUT_TITLE+" TEXT,"+CIN_COUT_MM+" TEXT,"+CIN_COUT_DD+" TEXT,"+CIN_COUT_YY+" TEXT,"+CIN_COUT_DUE+" TEXT)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
    {
        db.execSQL("DROP TABLE"+REGISTER_TABLE);
        db.execSQL("DROP TABLE"+STUDENT_TABLE);
        db.execSQL("DROP TABLE"+BOOKS_TABLE);
        db.execSQL("DROP TABLE"+CIN_COUT_TABLE);
        onCreate(db);

    }

    public boolean insert(String username,String password,String email)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values= new ContentValues();
        values.put(REGISTER_USERNAME,username);
        values.put(REGISTER_PASSWORD,password);
        values.put(REGISTER_EMAIL,email);
        long res=db.insert(REGISTER_TABLE,null,values);
        if(res==-1)
            return false;
        else
            return true;

    }
    public boolean insertStudent(String sid,String F_Name,String L_name,String course,String address)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values=new ContentValues();
        values.put(STUDENT_ID,sid);
        values.put(STUDENT_FNAME,F_Name);
        values.put(STUDENT_LNAME,L_name);
        values.put(STUDENT_COURSE,course);
        values.put(STUDENT_ADDRESS,address);
        long res=db.insert(STUDENT_TABLE,null,values);
        if(res==-1)
            return false;
        else
            return true;

    }
    public boolean insertBooks(String isbn,String booktitle,String booktype,String authorname,String quantity,String edition,String price,String pages,String pubname,String pubaddress,String email,String contact)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values=new ContentValues();
        values.put(BOOKS_ISBN,isbn);
        values.put(BOOKS_TITLE,booktitle);
        values.put(BOOKS_TYPE,booktype);
        values.put(BOOKS_AUTHOR_NAME,authorname);
        values.put(BOOKS_QUANTITY,quantity);
        values.put(BOOKS_EDITION,edition);
        values.put(BOOKS_PRICE,price);
        values.put(BOOKS_PAGES,pages);
        values.put(BOOKS_PUB_NAME,pubname);
        values.put(BOOKS_PUB_ADDRESS,pubaddress);
        values.put(BOOKS_EMAIL,email);
        values.put(BOOKS_CONTACT,contact);
        long res=db.insert(BOOKS_TABLE,null,values);
        if(res==-1)
            return false;
        else
            return true;

    }
    public boolean insertCin_Cout(String sid,String isbn,String title,String month,String date,String year,String due)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values=new ContentValues();
        values.put(CIN_COUT_SID,sid);
        values.put(CIN_COUT_ISBN,isbn);
        values.put(CIN_COUT_TITLE,title);
        values.put(CIN_COUT_MM,month);
        values.put(CIN_COUT_DD,date);
        values.put(CIN_COUT_YY,year);
        values.put(CIN_COUT_DUE,due);
        long res=db.insert(CIN_COUT_TABLE,null,values);
        if(res==-1)
            return false;
        else
            return true;

    }
    public Cursor insertCin_Cout_retrieve(String sid)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        Cursor cursor=db.rawQuery("SELECT CIN_COUT_SID,CIN_COUT_ISBN,CIN_COUT_TITLE,CIN_COUT_DUE FROM CIN_COUT_TABLE WHERE CIN_COUT_SID='"+sid+"'",null);
        return cursor;

    }
    public boolean deletecheckincheckout(String sid)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        int res=db.delete(CIN_COUT_TABLE,CIN_COUT_SID+"=?",new String[]{sid});
        if(res>0)
            return true;
        else
            return false;
    }
    public boolean updatecheckincheckout(String sid)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values=new ContentValues();
        values.put(CIN_COUT_DUE,"0");
        int res=db.update(CIN_COUT_TABLE,values,"CIN_COUT_SID = ?",new String[]{sid});
        if(res>0)
            return true;
        else
            return false;
    }
    public Cursor retrievecheckincheckout(String sid)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        Cursor cursor=db.rawQuery("SELECT CIN_COUT_SID,CIN_COUT_DUE FROM CIN_COUT_TABLE WHERE CIN_COUT_SID='"+sid+"'",null);
        return cursor;
    }
    /*public Cursor retrieveFine(String sid)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        return db.rawQuery("SELECT CIN_COUT_DUE FROM CIN_COUT_TABLE WHERE CIN_COUT_SID='"+sid+"'",null);
    }
    public Cursor retrieveDate(String sid)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        return db.rawQuery("SELECT CIN_COUT_DD FROM CIN_COUT_TABLE WHERE CIN_COUT_SID='"+sid+"'",null);
    }
    public Cursor retrieveMonth(String sid)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        return db.rawQuery("SELECT CIN_COUT_MM FROM CIN_COUT_TABLE WHERE CIN_COUT_SID='"+sid+"'",null);
    }*/
    public boolean alterFIne(String sid,String update)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values=new ContentValues();
        values.put(CIN_COUT_DUE,update);
        int res=db.update(CIN_COUT_TABLE,values,CIN_COUT_SID+"= ?",new String[]{sid});
        if(res>0)
            return true;
        else
            return false;
    }
    public Cursor login(String usernam,String password)
    {
        Cursor res;
        SQLiteDatabase db=this.getWritableDatabase();
        res= db.rawQuery("SELECT USERNAME from REGISTER_TABLE where PASSWORD='"+password+"' AND USERNAME='"+usernam+"'",null);
        return res;

    }
    public Cursor retrieveStudent(String sid)
    {
        Cursor res;
        SQLiteDatabase db=this.getWritableDatabase();
        res=db.rawQuery("SELECT * FROM "+STUDENT_TABLE+" WHERE "+STUDENT_ID+"='"+sid+"'",null);
        return res;
    }
    public Cursor retrievebook(String isbn)
    {
        Cursor res;
        SQLiteDatabase db=this.getWritableDatabase();
        res=db.rawQuery("SELECT * FROM "+BOOKS_TABLE+" WHERE "+BOOKS_ISBN+"='"+isbn+"'",null);
        return res;
    }
    public boolean deleteStudent(String sid)
    {

        SQLiteDatabase db=this.getWritableDatabase();
        int res= db.delete(STUDENT_TABLE,"SID = ?",new String[] {sid});
        if(res>0)
            return true;
        else
            return false;
    }
    public boolean deletebook(String isbn)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        int res= db.delete(BOOKS_TABLE,"BOOKS_ISBN = ?",new String[] {isbn});
        if(res>0)
            return true;
        else
            return false;
    }
    public boolean editstudent(String key,String id,String update)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values=new ContentValues();
        values.put(key,update);
        int res=db.update(STUDENT_TABLE,values,"SID = ?",new String[]{id});
        if(res>0)
            return true;
        else
            return false;
    }
    public boolean editbook(String key,String isbn,String update)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues values=new ContentValues();
        values.put(key,update);
        int res=db.update(BOOKS_TABLE,values,"BOOKS_ISBN = ?",new String[]{isbn});
        if(res>0)
            return true;
        else
            return false;
    }
}
