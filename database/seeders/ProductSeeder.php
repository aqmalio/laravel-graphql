<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 40; $i++) {
            $faker = Faker::create('id_ID');
            DB::table('products')->insert([
                'brand_id' => rand(1,10),
                'name' => $faker->word(),
                'picture' => Str::random(10).'picture.png',
                'price' => rand(100, 99999),
            ]);
        }
    }
}
