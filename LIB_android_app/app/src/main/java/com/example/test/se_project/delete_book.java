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

public class delete_book extends Fragment
{
    EditText editText;
    Button button;
    DataBaseHelper dataBaseHelper;
    View view;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        view= inflater.inflate(R.layout.fragment_delete_book, container, false);
        editText=(EditText)view.findViewById(R.id.deleteEdittext1);
        button=(Button)view.findViewById(R.id.deleteButton1);
        dataBaseHelper=new DataBaseHelper(getContext());
        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                boolean res=dataBaseHelper.deletebook(editText.getText().toString());
                if(res==true)
                    Toast.makeText(getContext(),"Success",Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(getContext(),"Error",Toast.LENGTH_LONG).show();
            }
        });

        return view;
    }
}
