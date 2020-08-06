<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatusAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('status_answers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->enum('status', ['like', 'dislike'])->nullable();
            $table->unsignedBigInteger('ans_id');
            $table->string('email_users');
            $table->foreign('ans_id')->references('id')->on('answers');
            $table->foreign('email_users')->references('email')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('status_answers');
    }
}
