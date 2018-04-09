package com.example.test.se_project;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;


public class updateBook extends Fragment
{
    ArrayAdapter<CharSequence> arrayAdapter;
    EditText editText1,editText2;
    Spinner spinner;
    Button button;
    int spinnerId;
    DataBaseHelper dataBaseHelper;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View view= inflater.inflate(R.layout.fragment_update_book, container, false);

        dataBaseHelper=new DataBaseHelper(getContext());
        editText1=(EditText)view.findViewById(R.id.updatebook);
        editText2=(EditText)view.findViewById(R.id.setBook);
        spinner=(Spinner)view.findViewById(R.id.updatebookspinner);
        arrayAdapter=ArrayAdapter.createFromResource(getContext(),R.array.UpdateBook,android.R.layout.simple_dropdown_item_1line);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(arrayAdapter);
        button=(Button)view.findViewById(R.id.updatebookbutton);
        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                boolean res=dataBaseHelper.editbook(spinner.getSelectedItem().toString(),editText1.getText().toString(),editText2.getText().toString());
                if(res == true)
                    Toast.makeText(getContext(),"Successfully updated",Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(getContext(),"Error while updating",Toast.LENGTH_LONG).show();
            }
        });

        return view;
    }
}
