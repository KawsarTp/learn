<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContentCreatorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('content_creators', function (Blueprint $table) {
            $table->id();
            $table->string('first_name',100);
            $table->string('last_name',100);
            $table->string('username',50)->unique();
            $table->string('email',100)->unique();
            $table->string('mobile',30)->unique();
            $table->decimal('balance',28,8);
            $table->string('password');
            $table->string('image')->nullable();
            $table->text('address')->nullable();
            $table->boolean('status')->comment('0:banned, 1:active');
            $table->boolean('ev')->comment('0:email unverified, 1:email verified');
            $table->boolean('sv')->comment('0:sms unverified, 1:sms verified');
            $table->string('ver_code',15)->comment('store verification code');
            $table->dateTime('ver_code_send_at')->comment('store verification code');
            $table->boolean('ts')->comment('0:2fa off, 1: 2fa on');
            $table->boolean('tv')->comment('0:2fa off, 1: 2fa on');
            $table->string('tsc',100);
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
        Schema::dropIfExists('content_creators');
    }
}
