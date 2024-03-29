package com.example.theupdatedbouldercoffeerec;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;


public class MainActivity extends AppCompatActivity {
    private Button button;
    private Spinner crowdSpinner;
    private CoffeeShop myCoffeeShop = new CoffeeShop();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        crowdSpinner = findViewById(R.id.spinner);
        button = findViewById(R.id.button);

        View.OnClickListener onclick = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                findCoffee(v);
            }
        };

        button.setOnClickListener(onclick);
    }

    private void findCoffee(View view){
        Integer crowd = crowdSpinner.getSelectedItemPosition();
        myCoffeeShop.setCoffeeShopName(crowd);
        String suggestedCoffeeShop = myCoffeeShop.getCoffeeShopName();
        String suggestedCoffeeShopURL = myCoffeeShop.getCoffeeShopURL();
        Log.i("shop suggested", suggestedCoffeeShop);
        Log.i("url suggested", suggestedCoffeeShopURL);

        Intent intent = new Intent(this,CoffeeActivity.class);
        intent.putExtra("coffeeShopName", suggestedCoffeeShop);
        intent.putExtra("coffeeShopURL", suggestedCoffeeShopURL);
        startActivity(intent);
    }
}
