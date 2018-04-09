package com.example.test.se_project;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;


public class addstudent extends Fragment
{
    EditText sid,fname,lname,course,address;
    Button button;
    DataBaseHelper dataBaseHelper;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View view= inflater.inflate(R.layout.fragment_addstudent, container, false);

        sid=(EditText)view.findViewById(R.id.StudentID);
        fname=(EditText)view.findViewById(R.id.Fname);
        lname=(EditText)view.findViewById(R.id.Lname);
        course=(EditText)view.findViewById(R.id.Course);
        address=(EditText)view.findViewById(R.id.Address);
        button=(Button)view.findViewById(R.id.SaveID);
        dataBaseHelper=new DataBaseHelper(getContext());
        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                boolean res=dataBaseHelper.insertStudent(sid.getText().toString(),fname.getText().toString(),lname.getText().toString(),course.getText().toString(),address.getText().toString());
                if(res==false)
                    Toast.makeText(getContext(),"Error In inserting",Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(getContext(),"Successfully added",Toast.LENGTH_LONG).show();
            }
        });

        return view;
    }

}
