<?php

namespace Tests\Feature;
use App\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CreateStatusTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testExample()
    {
        $user= factory(User::class)->create();
        $this->actingAs($user);
        $this->post(route('status.store'), ['body' => 'mi estado']);
        $this->assertDatabaseHas('status', ['body' => 'mi primer estado']);
/*
        $response = $this->get('/');

        $response->assertStatus(200);
        
 */
    }
}
