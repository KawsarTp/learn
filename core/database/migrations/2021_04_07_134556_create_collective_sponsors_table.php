<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCollectiveSponsorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('collective_sponsors', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('collective_id');
            $table->string('name');
            $table->string('details');
            $table->decimal('price',28,8);
            $table->decimal('goal',28,8);
            $table->integer('duration')->comment('1=>one time, 2=>monthly, 3=> yearly');
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
        Schema::dropIfExists('collective_sponsors');
    }
}
