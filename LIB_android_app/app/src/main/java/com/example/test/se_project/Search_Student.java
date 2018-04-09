package com.example.test.se_project;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;


public class Search_Student extends Fragment
{
    EditText editText0,editText1,editText2,editText3,editText4,editText5;
    Button button;
    View view1,view2;
    DataBaseHelper dataBaseHelper;
    Cursor cursor;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        view1=inflater.inflate(R.layout.fragment_search__student, container, false);
        view2=inflater.inflate(R.layout.student_alert,container,false);
        dataBaseHelper=new DataBaseHelper(getContext());
        editText0=(EditText)view1.findViewById(R.id.search_student);
        editText1=(EditText)view2.findViewById(R.id.al_StudentID);
        editText2=(EditText)view2.findViewById(R.id.al_Fname);
        editText3=(EditText)view2.findViewById(R.id.al_Lname);
        editText4=(EditText)view2.findViewById(R.id.al_Course);
        editText5=(EditText)view2.findViewById(R.id.al_Address);
        button=(Button)view1.findViewById(R.id.search_student_button);
        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                cursor=dataBaseHelper.retrieveStudent(editText0.getText().toString());
                cursor.moveToFirst();
                if(cursor.getCount()==0)
                {
                    Toast.makeText(getContext(),"Nothing found",Toast.LENGTH_LONG).show();
                }
                else
                {
                    editText1.setText(cursor.getString(0));
                    editText2.setText(cursor.getString(1));
                    editText3.setText(cursor.getString(2));
                    editText4.setText(cursor.getString(3));
                    editText5.setText(cursor.getString(4));
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                    builder.setView(view2);
                    builder.setCancelable(true);
                    builder.setTitle("Student Info");
                    builder.show();
                }
            }
        });


        return view1;
    }
}
