<?php

use Illuminate\Database\Seeder;
use App\vehicle\Photo;

class PhotoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new Photo([
            'car_id'=>'1',
            'img'   =>'frontend/img/product01.jpg',
            'video' =>'<iframe width="560" height="315" src="https://www.youtube.com/embed/-Ctg6loqL4A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        ]);
        $product->save();
        $product = new Photo([
            'car_id'=>'2',
            'img'   =>'frontend/img/product01.jpg',
            'video' =>'<iframe width="560" height="315" src="https://www.youtube.com/embed/-Ctg6loqL4A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        ]);
        $product->save();
        $product = new Photo([
            'car_id'=>'3',
            'img'   =>'frontend/img/product01.jpg',
            'video' =>'<iframe width="560" height="315" src="https://www.youtube.com/embed/-Ctg6loqL4A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        ]);
        $product->save();
        $product = new Photo([
            'car_id'=>'4',
            'img'   =>'frontend/img/product01.jpg',
            'video' =>'<iframe width="560" height="315" src="https://www.youtube.com/embed/-Ctg6loqL4A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        ]);
        $product->save();
        $product = new Photo([
            'car_id'=>'5',
            'img'   =>'frontend/img/product01.jpg',
            'video' =>'<iframe width="560" height="315" src="https://www.youtube.com/embed/-Ctg6loqL4A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        ]);
        $product->save();
        $product = new Photo([
            'car_id'=>'6',
            'img'   =>'frontend/img/product01.jpg',
            'video' =>'<iframe width="560" height="315" src="https://www.youtube.com/embed/-Ctg6loqL4A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        ]);
        $product->save();
       
    }
}
