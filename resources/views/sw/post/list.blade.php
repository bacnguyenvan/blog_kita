@extends("sw.shared._header")
@section('title', '検索データ編集 | 証券アナリストジャーナル 検索システム管理')

@section('body-container')
<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <i class="pe-7s-drawer icon-gradient bg-happy-itmeo">
                        </i>
                    </div>
                    <div>Tables Post List
                        <div class="page-title-subheading">Tables are the backbone of almost all web
                            applications.
                        </div>
                    </div>
                </div>
                @if(session('message'))
                <div class="page-title-actions">
                    <div class="card mb-3 widget-content bg-grow-early">
                        {{session('message')}}
                    </div>
                </div>
                @endif
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <ul class="body-tabs body-tabs-layout tabs-animated body-tabs-animated nav" style="flex-direction: row-reverse">
                    <li class="nav-item">
                        <a role="tab" class="nav-link active" id="tab-1" data-toggle="tab" href="#tab-content-1">
                            <span>Creat post <i class="fa fa-plus"></i></span>
                        </a>
                    </li>
                </ul>
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <h5 class="card-title">Post</h5>
                        <table class="mb-0 table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Title</th>
                                    <th>Content</th>
                                    <th>Created</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($posts as $post)
                                <tr>
                                    <th scope="row">{{$post->id}}</th>
                                    <td>{{$post->title}}</td>
                                    <td>{{$post->content}}</td>
                                    <td>{{$post->start_trip}}</td>
                                    <td>
                                        <a href="{{route('sw.post.show', $post->id)}}" class="btn-shadow mr-3 btn btn-warning">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a class="btn-shadow mr-3 btn btn-danger">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="app-wrapper-footer">
        <div class="app-footer">
            <div class="app-footer__inner">
                <div class="app-footer-left">
                    <ul class="nav">
                        <li class="nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                Footer Link 1
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                Footer Link 2
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="app-footer-right">
                    <ul class="nav">
                        <li class="nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                Footer Link 3
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <div class="badge badge-success mr-1 ml-0">
                                    <small>NEW</small>
                                </div>
                                Footer Link 4
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@stop

