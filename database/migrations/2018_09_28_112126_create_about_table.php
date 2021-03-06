<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAboutTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {        
        Schema::create('about', function (Blueprint $table) {
            $table->increments('id');
            $table->string('heading');
            $table->text('description1');
            $table->text('description2');
            $table->string('emphasized_text');
            $table->string('cover_image');
            $table->tinyInteger('status');
            $table->rememberToken();
            $table->timestamps();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('about');
    }
}
