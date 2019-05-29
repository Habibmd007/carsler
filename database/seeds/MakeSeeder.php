<?php

use Illuminate\Database\Seeder;

class MakeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('makes')->insert([
            'name'  =>   'travel',
        ]);
    }
}
