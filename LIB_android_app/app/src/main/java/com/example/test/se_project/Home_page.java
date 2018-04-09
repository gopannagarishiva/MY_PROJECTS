package com.example.test.se_project;


import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.v7.app.AlertDialog;
import android.view.View;
import android.widget.ImageButton;

public class Home_page extends Activity
{
    ImageButton search,add,update,home,checkInOut,pay,signOut;
    Fragment fragment;
    FragmentManager fragmentManager;
    FragmentTransaction fragmentTransaction;
    Intent intent;

    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.home);

        //Intializing Home page functionalitys/Buttons

        search=(ImageButton)findViewById(R.id.searchid);
        add=(ImageButton)findViewById(R.id.addid);
        update=(ImageButton)findViewById(R.id.updateid);
        home=(ImageButton)findViewById(R.id.homeid);
        checkInOut=(ImageButton)findViewById(R.id.checkincheckoutid);
        pay=(ImageButton)findViewById(R.id.payid);
        signOut=(ImageButton)findViewById(R.id.logoutid);

        //adding listeners to buttons

        search.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new search();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.ImageButtonsFragment,fragment);
                fragmentTransaction.commit();

            }
        });
        add.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new add();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.ImageButtonsFragment,fragment);
                fragmentTransaction.commit();


            }
        });
        update.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new update();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.ImageButtonsFragment,fragment);
                fragmentTransaction.commit();
            }
        });
        home.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {fragment=new home();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.ImageButtonsFragment,fragment);
                fragmentTransaction.commit();
            }
        });
        checkInOut.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new checkincheckout();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.ImageButtonsFragment,fragment);
                fragmentTransaction.commit();
            }
        });
        pay.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new pay();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.ImageButtonsFragment,fragment);
                fragmentTransaction.commit();
            }
        });
        signOut.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                intent=new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent);
            }
        });
    }
}
