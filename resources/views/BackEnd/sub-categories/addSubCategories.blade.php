@extends('BackEnd.include.header')
@section('content')
<!--main-container-part-->
<div id="content">
<div id="breadcrumb"> 
        <a href="{{url('/admin/dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
        <a href="{{url('/admin/subCategories')}}" title="Go to Sub Categories" class="tip-bottom"><i class="icon-tags"></i> Sub Categories</a> 
        <a href="{{url('/admin/subCategories/add')}}" title="Add Sub Category" class="tip-bottom"><i class="icon-plus"></i>Add Sub Categories</a> 
    </div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span12">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Add Sub Categories</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{ url('/admin/subCategories/add') }}" method="post" class="form-horizontal" id="category_validate" name="category_validate">{{csrf_field()}}
            <div class="control-group">
              <label class="control-label">Sub Category Name :</label>
              <div class="controls">
                <input type="text" class="span11" name="subCategoryName" id="subCategoryName" placeholder="Enter sub category name" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Main Category :</label>
              <div class="controls">
                 <select class="form-control" id="parentId" name="parentId">
                  <option value="0">Main Category</option>
                  @foreach ($collection as $item)
                     <option value="{{$item->category_id}}">{{ $item->category_name}}</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">URL :</label>
              <div class="controls">
                <input type="text" class="span11" name="url" id="url" placeholder="Enter URL" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Description</label>
              <div class="controls">
                <textarea class="span11" name="description" id="description"></textarea>
              </div>
            </div>
            <div class="form-actions pull-right">
              <button type="submit" class="btn btn-success">Save</button>
            </div>
            <div class="pull-left form-actions">
              <a  href="/admin/subCategories" class="btn btn-default">Back</a>
            </div>
          </form>
        </div>
      </div>
    
      
    </div>
      </div>
 
</div></div>
<!--end-main-container-part-->
@endsection


