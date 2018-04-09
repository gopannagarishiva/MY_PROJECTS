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
import android.widget.Toast;


public class checkincheckout extends Fragment
{
    Button checkin,checkout;
    Fragment fragment;
    FragmentManager fragmentManager;
    FragmentTransaction fragmentTransaction;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View view=inflater.inflate(R.layout.fragment_checkincheckout, container, false);

        //Alter dialouge box builder
        View view1=View.inflate(getContext(),R.layout.spinnercheckincheckout,null);
        AlertDialog.Builder builder=new AlertDialog.Builder(getContext());
        builder.setView(view1);
        builder.setTitle("Select");
        checkin=(Button)view1.findViewById(R.id.chechinButton);
        checkout=(Button)view1.findViewById(R.id.checkoutButton);
        final AlertDialog alertDialog=builder.create();
        alertDialog.show();

        checkin.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new checkInfragment();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.checkfragment,fragment);
                fragmentTransaction.commit();
                alertDialog.cancel();
            }
        });
        checkout.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                fragment=new checkOutfragment();
                fragmentManager=getFragmentManager();
                fragmentTransaction=fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.checkfragment,fragment);
                fragmentTransaction.commit();
                alertDialog.cancel();
            }
        });


        return view;
    }

}
