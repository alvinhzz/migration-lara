<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAtributsToQuestionComments extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('question_comments', function (Blueprint $table) {
            $table->timestamp('tgl_buat')->nullable();
            $table->string('email_users');
            $table->unsignedBigInteger('quest_id');
            $table->foreign('email_users')->references('email')->on('users');
            $table->foreign('quest_id')->references('id')->on('questions');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('question_comments', function (Blueprint $table) {
            //
        });
    }
}
