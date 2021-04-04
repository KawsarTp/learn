<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('content_creator_id');
            $table->unsignedBigInteger('plan_id')->nullable();
            $table->text('description');
            $table->text('image');
            $table->integer('privacy')->comment('0:for all, 1:followers, 2:subscribers, 3:premimum');
            $table->decimal('price',28,8)->nullable();
            $table->boolean('approval_status');
            $table->boolean('pinned');
            $table->boolean('comment_status');
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
        Schema::dropIfExists('posts');
    }
}
