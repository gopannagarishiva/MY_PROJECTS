package com.example.test.se_project;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;


public class search extends Fragment
{
    View view1,view2;
    Button button1,button2;
    Fragment fragment;
    FragmentManager fragmentManager;
    FragmentTransaction fragmentTransaction;


    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        view1=inflater.inflate(R.layout.fragment_search, container, false);

        view2=getView().inflate(getContext(),R.layout.search_dialogue_box,null);

        final AlertDialog.Builder builder=new AlertDialog.Builder(getContext());
        builder.setView(view2);
        builder.setTitle("Select");
        final AlertDialog alertDialog=builder.create();
        alertDialog.show();
        button1=(Button)view2.findViewById(R.id.studentsearch);
        button2=(Button)view2.findViewById(R.id.booksearch);

        button1.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new Search_Student();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.SearchFragment,fragment);
                fragmentTransaction.commit();
                alertDialog.cancel();
            }
        });
        button2.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new Search_Book();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.SearchFragment,fragment);
                fragmentTransaction.commit();
                alertDialog.cancel();

            }
        });

        return view1;
    }

}
