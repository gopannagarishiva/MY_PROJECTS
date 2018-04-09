package com.example.test.se_project;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.Toast;


public class add extends Fragment
{
    Spinner spinner;
    ArrayAdapter<CharSequence> arrayAdapter;
    Fragment fragment;
    FragmentManager fragmentManager;
    FragmentTransaction fragmentTransaction;
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View view=inflater.inflate(R.layout.fragment_add, container, false);

        spinner=(Spinner)view.findViewById(R.id.spinner);
        arrayAdapter=ArrayAdapter.createFromResource(getContext(),R.array.spinnerItems1,android.R.layout.simple_spinner_dropdown_item);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(arrayAdapter);

        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
        {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id)
            {
                if(parent.getItemIdAtPosition(position)==0)
                {
                    fragment=new addnull();
                    fragmentManager=getFragmentManager();
                    fragmentTransaction=fragmentManager.beginTransaction();
                    fragmentTransaction.replace(R.id.mySelectedFragmentForStudentsORbook,fragment);
                    fragmentTransaction.commit();
                }
                if(parent.getItemIdAtPosition(position)==1)
                {
                    fragment=new addstudent();
                    fragmentManager=getFragmentManager();
                    fragmentTransaction=fragmentManager.beginTransaction();
                    fragmentTransaction.replace(R.id.mySelectedFragmentForStudentsORbook,fragment);
                    fragmentTransaction.commit();

                }
                if(parent.getItemIdAtPosition(position)==2)
                {
                    fragment=new addbook();
                    fragmentManager=getFragmentManager();
                    fragmentTransaction=fragmentManager.beginTransaction();
                    fragmentTransaction.replace(R.id.mySelectedFragmentForStudentsORbook,fragment);
                    fragmentTransaction.commit();

                }

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent)
            {

            }
        });


        return view;

    }

}
