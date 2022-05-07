@extends("sw.shared._header")
@section('title', '検索データ編集 | 証券アナリストジャーナル 検索システム管理')

@section('body-container')
<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <i class="pe-7s-graph text-success">
                        </i>
                    </div>
                    <div>Edit post
                        <div class="page-title-subheading">Build whatever layout you need with our Architect framework.
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="tab-content">
            <div class="tabs-animation" id="tab-content-1" role="tabpanel">
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <h5 class="card-title">Update Post</h5>
                        <form class="" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="position-relative row form-group"><label for="exampleEmail"
                                    class="col-sm-2 col-form-label">Title</label>
                                <div class="col-sm-10">
                                    <input name="title" placeholder="Write title"class="form-control" value="{{$post->title}}">
                                </div>
                            </div>
                            <div class="position-relative row form-group">
                                <label for="examplePassword" class="col-sm-2 col-form-label">Content</label>
                                <div class="col-sm-10">
                                    <input name="content"
                                        placeholder="Write content" type="text" class="form-control"  value="{{$post->content}}">
                                </div>
                            </div>
                            <div class="position-relative row form-group"><label for="examplePassword"
                                    class="col-sm-2 col-form-label">Place</label>
                                <div class="col-sm-10">
                                    <input name="place"
                                        placeholder="Write place" type="text" class="form-control"  value="{{$post->place}}"></div>
                            </div>

                            <div class="position-relative row form-group"><label for="examplePassword"
                                class="col-sm-2 col-form-label">Start trip</label>
                            <div class="col-sm-10">
                                <input name="start_trip"
                                    placeholder="Write place" type="date" class="form-control"  value="{{$post->start_trip}}"></div>
                            </div>

                            <div class="position-relative row form-group"><label for="exampleText"
                                    class="col-sm-2 col-form-label">Content Detail</label>
                                <div class="col-sm-10"><textarea id="content_detail" name="content_detail" 
                                        class="form-control">{{$post->content_detail}}</textarea></div>
                            </div>
                            <div class="position-relative row form-group"><label for="exampleFile"
                                    class="col-sm-2 col-form-label">Avatar</label>
                                <div class="col-sm-10">
                                    <input name="file" type="file"
                                        class="form-control-file">
                                    <small class="form-text text-muted">This is some placeholder block-level help text
                                        for the above input. It's a bit lighter and easily wraps to a new line.</small>
                                    <img src='{{asset("$post->avatar")}}' width="30%"/>
                                </div>
                            </div>
                            <fieldset class="position-relative row form-group">
                                <legend class="col-form-label col-sm-2">Is publish</legend>
                                <div class="col-sm-10">
                                    <div class="position-relative form-check">
                                        <label class="form-check-label">
                                            <input checked name="is_publish" value="1" type="radio" class="form-check-input"> Yes
                                        </label>
                                    </div>
                                    <div class="position-relative form-check">
                                        <label class="form-check-label">
                                            <input name="is_publish" value="0" type="radio" class="form-check-input"> No
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                            @if(count($errors) > 0 )
                            <div class="position-relative row form-group">
                                <div class="col-sm-10 offset-sm-1 card mb-1 bg-danger" style="color: white;">
                                    @foreach($errors->all() as $error)
                                    <li>{{$error}}</li>
                                    @endforeach
                                </div>
                            </div>
                            @endif
                            <div class="position-relative row form-check">
                                <div class="col-sm-10 offset-sm-2">
                                    <button class="btn btn-secondary">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('script')
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>

    {{-- <script>CKFinder.config( { connectorPath: '/ckfinder/connector' } );</script> --}}

    CKEDITOR.replace( 'content_detail',{
        filebrowserBrowseUrl: "{{ asset('ckfinder/ckfinder.html') }}",
        filebrowserImageBrowseUrl: "{{ asset('ckfinder/ckfinder.html?type=Images') }}",
        filebrowserFlashBrowseUrl: "{{ asset('ckfinder/ckfinder.html?type=Flash') }}",
        filebrowserUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'
    } );

@stop