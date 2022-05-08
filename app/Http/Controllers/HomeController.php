<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Facade\FlareClient\View;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home()
    {
        $data['posts'] = Post::paginate(4);
        return view('page.home', $data);
    }

    public function detail($id)
    {
        $post = Post::findOrFail($id);

        $post->view += 1;
        $post->save();

        return View('page.post.detail')
        ->with('post', $post)
        ->with('post_previous', $post->previous() ?? $post->endPrevious())
        ->with('post_next', $post->next() ?? $post->endNext());
    }
}
