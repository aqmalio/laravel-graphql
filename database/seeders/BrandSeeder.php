<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 10; $i++) {
            $faker = Faker::create('id_ID');
            DB::table('brands')->insert([
                'name' => $faker->company(),
                'logo' => Str::random(10).'logo.png',
                'banner' => Str::random(10).'banner.png',
            ]);
        }
    }
}
