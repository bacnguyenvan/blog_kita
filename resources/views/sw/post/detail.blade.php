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
                                        class="form-control">{!! $post->content_detail !!}</textarea></div>
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
    <script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>
    <script>
        class MyUploadAdapter {
            constructor(loader) {
                this.loader = loader;
            }

            upload() {
                return this.loader.file
                    .then(file => new Promise((resolve, reject) => {
                        this._initRequest();
                        this._initListeners(resolve, reject, file);
                        this._sendRequest(file);
                    }));
            }

            abort() {
                if (this.xhr) {
                    this.xhr.abort();
                }
            }

            _initRequest() {
                const xhr = this.xhr = new XMLHttpRequest();

                xhr.open('POST', "{{route('post.editor.upload', ['_token' => csrf_token() ])}}", true);
                xhr.responseType = 'json';
            }

            _initListeners(resolve, reject, file) {
                const xhr = this.xhr;
                const loader = this.loader;
                const genericErrorText = `Couldn't upload file: ${file.name}.`;

                xhr.addEventListener('error', () => reject(genericErrorText));
                xhr.addEventListener('abort', () => reject());
                xhr.addEventListener('load', () => {
                    const response = xhr.response;

                    if (!response || response.error) {
                        return reject(response && response.error ? response.error.message : genericErrorText);
                    }

                    resolve(response);
                });

                if (xhr.upload) {
                    xhr.upload.addEventListener('progress', evt => {
                        if (evt.lengthComputable) {
                            loader.uploadTotal = evt.total;
                            loader.uploaded = evt.loaded;
                        }
                    });
                }
            }

            _sendRequest(file) {
                const data = new FormData();

                data.append('upload', file);

                this.xhr.send(data);
            }
        }

        function MyCustomUploadAdapterPlugin(editor) {
            editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
                return new MyUploadAdapter(loader);
            };
        }

        ClassicEditor
            .create(document.querySelector('#content_detail'), {
                extraPlugins: [MyCustomUploadAdapterPlugin],
            })
            .catch(error => {
                console.error(error);
            });
    </script>
@stop