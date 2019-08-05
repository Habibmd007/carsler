<?php

use Illuminate\Database\Seeder;
use App\vehicle\Car;

// class vehicle/CarSeeder extends Seeder
class CarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new Car([
            'user_id'=>'3',
            'head'=>'2016 Porsche 911 Black Edition',
            'body_type'=>'1',
            'condition'=>' ',
            'make'=>'',
            'edition'=>'22',
            'transmission'=>'', 
            'mileage'=>'', 
            'out_color'=>'', 
            'in_color'=>'', 
            'Cylinder'=>'1',
            'drive_type'=>'1',
            'fuel'=>'1',
            'alt_fuel'=>'1',
            'price'=>'1',
            'active'=>'1',
            'description'=>'1',
            'state'=>'1',
            'city'=>'1',
            'thana'=>'1',
            'road'=>'1',
        ]);
        $product->save();
    }
}
