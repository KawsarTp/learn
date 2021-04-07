<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostPurchagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('post_purchages', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('unlocker_id');
            $table->unsignedBigInteger('post_id');
            $table->string('model',100);
            $table->decimal('amount',28,8);
            $table->string('trx');
            $table->string('details');
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
        Schema::dropIfExists('post_purchages');
    }
}
