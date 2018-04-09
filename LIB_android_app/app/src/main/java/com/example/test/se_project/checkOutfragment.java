package com.example.test.se_project;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class checkOutfragment extends Fragment
{

    EditText editText1,editText2,editText3,editText4,editText5;
    Button button1,button2;
    DataBaseHelper dataBaseHelper;
    View view;
    /*Calendar calendar;
    SimpleDateFormat format1,format2;
    String Date,Month,amount,DD,MM;*/
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        view= inflater.inflate(R.layout.fragment_check_outfragment, container, false);

        dataBaseHelper=new DataBaseHelper(getContext());
        /*calendar=Calendar.getInstance();
        format1=new SimpleDateFormat("dd");//format=new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        Date=format1.format(calendar.getTime());
        format2=new SimpleDateFormat("MM");
        Month=format2.format(calendar.getTime());*/
        editText1=(EditText)view.findViewById(R.id.ssid);
        editText2=(EditText)view.findViewById(R.id.Sid);
        editText3=(EditText)view.findViewById(R.id.Isbn);
        editText4=(EditText)view.findViewById(R.id.titleID);
        editText5=(EditText)view.findViewById(R.id.latefee);
        button1=(Button)view.findViewById(R.id.go);
        button2=(Button)view.findViewById(R.id.checkout);
        button1.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                Cursor res=dataBaseHelper.insertCin_Cout_retrieve(editText1.getText().toString());
                if(res.getCount()==0)
                {
                    Toast.makeText(getContext(),"Error while retriving",Toast.LENGTH_LONG).show();
                }
                else
                {
                    res.moveToFirst();
                    editText2.setText(res.getString(0));
                    editText3.setText(res.getString(1));
                    editText4.setText(res.getString(2));
                    editText5.setText(res.getString(3));
                    /*if(dataBaseHelper.retrieveDate(editText1.getText().toString()).getString(0).compareTo(Date)==1)
                    {
                        editText5.setText(res.getString(3));
                    }
                    else
                    {
                        editText5.setText("10");
                    }*/
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                if(editText5.getText().toString().compareTo("0")==0)
                {
                    boolean res=dataBaseHelper.deletecheckincheckout(editText1.getText().toString());
                    if(res==true)
                        Toast.makeText(getContext(),"Checked Out",Toast.LENGTH_LONG).show();
                    else
                        Toast.makeText(getContext(),"Error: Try Again",Toast.LENGTH_LONG).show();
                }
                else
                {
                    Toast.makeText(getContext(),"Pay the DUE amount",Toast.LENGTH_LONG).show();
                }
            }
        });

        return view;
    }

}
