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


public class sign_Up extends Fragment
{
    EditText username,password,confirmpassword,emailid;
    Button submit;
    DataBaseHelper dataBaseHelper;
    public View onCreateView(LayoutInflater inflater, final ViewGroup container, Bundle savedInstanceState)
    {
        View view;
        view= inflater.inflate(R.layout.fragment_sign__up, container, false);

        username=(EditText)view.findViewById(R.id.userName);
        password=(EditText)view.findViewById(R.id.PassWord);
        confirmpassword=(EditText)view.findViewById(R.id.Confirm_Password);
        emailid=(EditText)view.findViewById(R.id.E_Mail);
        submit=(Button)view.findViewById(R.id.register);
        dataBaseHelper=new DataBaseHelper(getContext());
        submit.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                boolean res=dataBaseHelper.insert(username.getText().toString(),password.getText().toString(),emailid.getText().toString());
                if(res==false)
                    Toast.makeText(getContext(),"Error",Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(getContext(),"Success",Toast.LENGTH_LONG).show();
            }
        });

        return view;
    }

}
