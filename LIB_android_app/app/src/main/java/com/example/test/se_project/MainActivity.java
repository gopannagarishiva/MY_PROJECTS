package com.example.test.se_project;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;



public class MainActivity extends Activity
{
    Button signin,signup;
    Fragment fragment1,fragment2;
    FragmentManager fragmentManager1,fragmentManager2;
    FragmentTransaction fragmentTransaction1,fragmentTransaction2;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        signin=(Button)findViewById(R.id.SignIn);
        signup=(Button)findViewById(R.id.SignUp);

        signin.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment1=new Sign_In();
                fragmentManager1=getFragmentManager();
                fragmentTransaction1=fragmentManager1.beginTransaction();
                fragmentTransaction1.replace(R.id.myFragment,fragment1);
                fragmentTransaction1.commit();


            }
        });
        signup.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment2=new sign_Up();
                fragmentManager2=getFragmentManager();
                fragmentTransaction2=fragmentManager2.beginTransaction();
                fragmentTransaction2.replace(R.id.myFragment,fragment2);
                fragmentTransaction2.commit();
            }
        });
    }
}
