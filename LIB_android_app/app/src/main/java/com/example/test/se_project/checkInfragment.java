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

public class checkInfragment extends Fragment
{

    EditText editText1,editText2,editText3,editText4,editText5,editText6;
    Button button;
    DataBaseHelper dataBaseHelper;
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View view=inflater.inflate(R.layout.fragment_check_infragment, container, false);
        dataBaseHelper=new DataBaseHelper(getContext());
        editText1=(EditText)view.findViewById(R.id.SID);
        editText2=(EditText)view.findViewById(R.id.ISBN);
        editText3=(EditText)view.findViewById(R.id.TITLE);
        editText4=(EditText)view.findViewById(R.id.MM);
        editText5=(EditText)view.findViewById(R.id.DD);
        editText6=(EditText)view.findViewById(R.id.YY);
        button=(Button) view.findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                boolean res=dataBaseHelper.insertCin_Cout(editText1.getText().toString(),editText2.getText().toString(),editText3.getText().toString(),editText4.getText().toString(),editText5.getText().toString(),editText6.getText().toString(),"0");
                if(res==false)
                    Toast.makeText(getContext(),"Error",Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(getContext(),"Success",Toast.LENGTH_LONG).show();

            }
        });

        return view;
    }

}
