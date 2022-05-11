<?php

namespace App\Http\Controllers\SW;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class PostController extends Controller
{
    public function list()
    {
        $posts = Post::all();
        return view('sw.post.list', compact('posts'));
    }

    public function show(Request $request, $id)
    {
        $post = Post::findOrFail($id);

        if($request->isMethod('post')){
            $request->validate([
                'title' => 'required',
                'content' => 'required',
                'place' => 'required',
                'content_detail' => 'required'
            ]);

            $post->update([
                'slug' => Str::slug($request->title),
                'title' => $request->title,
                'content' => $request->content,
                'place' => $request->place,
                'content_detail' => $request->content_detail
            ]);

            return redirect()->route('sw.post.list')->with([
                'message' => 'Update post success'
            ]); 
        }

        return view('sw.post.detail', compact('post'));
    }
}
