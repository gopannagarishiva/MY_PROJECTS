package com.example.test.se_project;

import android.content.Context;
import android.content.Intent;
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

public class Sign_In extends Fragment
{
    Button button;
    EditText username,password;
    Intent intent;
    DataBaseHelper dataBaseHelper;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View view= inflater.inflate(R.layout.fragment_sign__in, container, false);

        dataBaseHelper=new DataBaseHelper(view.getContext());
        //Login
        username=(EditText)view.findViewById(R.id.userName);
        password=(EditText)view.findViewById(R.id.passWord);
        button=(Button)view.findViewById(R.id.Login);
        button.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View v)
            {
                Cursor res=dataBaseHelper.login(username.getText().toString(),password.getText().toString());
                if(res.getCount()==0)
                {
                    Toast.makeText(getContext(),"WRONG CREDIDENTALS",Toast.LENGTH_LONG).show();
                }
                else
                {
                    Toast.makeText(getContext(),"Success",Toast.LENGTH_LONG).show();
                    intent = new Intent(v.getContext(), Home_page.class);
                    startActivity(intent);
                }

            }
        });

        return view;
    }
}
