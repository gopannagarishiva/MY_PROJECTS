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

public class Search_Book extends Fragment
{
    EditText editText,editText1,editText2,editText3,editText4,editText5,editText6,editText7,editText8,editText9,editText10,editText11,editText12;
    Button button;
    View view1,view2;
    DataBaseHelper dataBaseHelper;
    Cursor cursor;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        view1= inflater.inflate(R.layout.fragment_search__book, container, false);
        view2=inflater.inflate(R.layout.book_alert,container,false);
        dataBaseHelper=new DataBaseHelper(getContext());
        editText=(EditText)view1.findViewById(R.id.search_book);
        editText1=(EditText)view2.findViewById(R.id.al_isbnno);
        editText2=(EditText)view2.findViewById(R.id.al_booktitle);
        editText3=(EditText)view2.findViewById(R.id.al_booktype);
        editText4=(EditText)view2.findViewById(R.id.al_authorname);
        editText5=(EditText)view2.findViewById(R.id.al_quantity);
        editText6=(EditText)view2.findViewById(R.id.al_edition);
        editText7=(EditText)view2.findViewById(R.id.al_price);
        editText8=(EditText)view2.findViewById(R.id.al_nopages);
        editText9=(EditText)view2.findViewById(R.id.al_pubname);
        editText10=(EditText)view2.findViewById(R.id.al_pubadd);
        editText11=(EditText)view2.findViewById(R.id.al_emailid);
        editText12=(EditText)view2.findViewById(R.id.al_contact);
        button=(Button)view1.findViewById(R.id.search_book_button);
        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                cursor=dataBaseHelper.retrievebook(editText.getText().toString());
                if(cursor.getCount()==0)
                {
                    Toast.makeText(getContext(),"Nothing found",Toast.LENGTH_LONG).show();
                }
                else
                {
                    cursor.moveToFirst();
                    editText1.setText(cursor.getString(0));
                    editText2.setText(cursor.getString(1));
                    editText3.setText(cursor.getString(2));
                    editText4.setText(cursor.getString(3));
                    editText5.setText(cursor.getString(4));
                    editText6.setText(cursor.getString(5));
                    editText7.setText(cursor.getString(6));
                    editText8.setText(cursor.getString(7));
                    editText9.setText(cursor.getString(8));
                    editText10.setText(cursor.getString(9));
                    editText11.setText(cursor.getString(10));
                    editText12.setText(cursor.getString(11));
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                    builder.setView(view2);
                    builder.setCancelable(true);
                    builder.setTitle("Book Info");
                    builder.show();
                }
            }
        });

        return view1;
    }
}
