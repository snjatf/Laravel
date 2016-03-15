<?php
/**
 * Created by PhpStorm.
 * User: wank
 * Date: 2015/12/14
 * Time: 21:43
 */


use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWFSolutionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wf_solutions', function(Blueprint $table)
        {
            $table->increments('id');
            $table->string('solution_title');
            $table->string('solution_description');
            $table->integer('solution_type');
            $table->tinyInteger('is_publish');
            $table->integer('author_id');
            $table->string('author_name');
            $table->longText('solution_content');
            $table->string('solution_attach');
            $table->string('solution_label');
            $table->integer('hit_count');
            $table->dateTime('publish_time');
            $table->dateTime('LastModifyTime');
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
        Schema::drop('wf_solutions');
    }
}