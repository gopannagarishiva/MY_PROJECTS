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

public class pay extends Fragment
{
    EditText editText1,editText2,editText3;
    Button button1;
    DataBaseHelper dataBaseHelper;
    View view;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        view= inflater.inflate(R.layout.fragment_pay, container, false);

        dataBaseHelper=new DataBaseHelper(getContext());
        editText1=(EditText)view.findViewById(R.id.paysid);
        editText2=(EditText)view.findViewById(R.id.paySID);
        editText3=(EditText)view.findViewById(R.id.payDue);
        button1=(Button)view.findViewById(R.id.GO);
        button1.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                Cursor res=dataBaseHelper.retrievecheckincheckout(editText1.getText().toString());
                if(res.getCount()==0)
                {
                    Toast.makeText(getContext(),"Error",Toast.LENGTH_LONG).show();
                }
                else
                {
                    res.moveToFirst();
                    editText2.setText(res.getString(0));
                    editText3.setText(res.getString(1));
                }
            }
        });

        return view;
    }

}
