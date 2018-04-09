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


public class addbook extends Fragment
{
    EditText editText1,editText2,editText3,editText4,editText5,editText6,editText7,editText8,editText9,editText10,editText11,editText12;
    Button button;
    DataBaseHelper dataBaseHelper;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View view=inflater.inflate(R.layout.fragment_addbook, container, false);

        dataBaseHelper=new DataBaseHelper(getContext());
        editText1=(EditText)view.findViewById(R.id.isbnno);
        editText2=(EditText)view.findViewById(R.id.booktitle);
        editText3=(EditText)view.findViewById(R.id.booktype);
        editText4=(EditText)view.findViewById(R.id.authorname);
        editText5=(EditText)view.findViewById(R.id.quantity);
        editText6=(EditText)view.findViewById(R.id.edition);
        editText7=(EditText)view.findViewById(R.id.price);
        editText8=(EditText)view.findViewById(R.id.nopages);
        editText9=(EditText)view.findViewById(R.id.pubname);
        editText10=(EditText)view.findViewById(R.id.pubadd);
        editText11=(EditText)view.findViewById(R.id.emailid);
        editText12=(EditText)view.findViewById(R.id.contact);
        button=(Button)view.findViewById(R.id.save);

        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                boolean res=dataBaseHelper.insertBooks(editText1.getText().toString(),editText2.getText().toString(),editText3.getText().toString(),editText4.getText().toString(),editText5.getText().toString(),editText6.getText().toString(),editText7.getText().toString(),editText8.getText().toString(),editText9.getText().toString(),editText10.getText().toString(),editText11.getText().toString(),editText12.getText().toString());
                if(res==false)
                    Toast.makeText(getContext(),"Error In inserting",Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(getContext(),"Successfully added",Toast.LENGTH_LONG).show();
            }
        });


        return view;
    }

}
