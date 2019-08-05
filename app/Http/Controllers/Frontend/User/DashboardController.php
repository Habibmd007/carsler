<?php

namespace App\Http\Controllers\Frontend\User;

use App\Http\Controllers\Controller;
use App\vehicle\Car;

/**
 * Class DashboardController.
 */
class DashboardController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $posts = Car::where('user_id', auth()->user()->id)->latest()->get();
        // return $posts;
        return view('frontend2.user.dashboard', compact('posts'));
    }

}
