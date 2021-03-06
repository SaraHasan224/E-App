@extends('BackEnd.include.header')
@section('content')
<!--main-container-part-->
<div id="content">
<div id="breadcrumb"> 
        <a href="{{url('/admin/dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
        <a href="{{url('/admin/products')}}" title="Go to Categories" class="tip-bottom"><i class="icon-tags"></i> Products</a> 
        <a href="{{url('/admin/products/add')}}" title="Add Categories" class="tip-bottom"><i class="icon-plus"></i>Edit Products</a> 
    </div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span12">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Edit Products</h5>
        </div>
        <div class="widget-content nopadding">
          <form enctype="multipart/form-data" action="{{url('/admin/products/edit/'.$product->product_id)}}"  method="post" class="form-horizontal">{{csrf_field()}}
            <div class="control-group">
                <label class="control-label">Product Code :</label>
                <div class="controls">
                  <input type="text" name="code" id="code" class="span11" value="{{$product->product_code}}" />
                </div>
              </div>
            <div class="control-group">
              <label class="control-label">Product Name :</label>
              <div class="controls">
                <input type="text" name="name" class="span11" value="{{$product->name}}" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Category Name :</label>
              <div class="controls">
                 <select class="form-control" id="pCategory" name="pCategory">
                 <?php echo $dropdown ?>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">URL :</label>
              <div class="controls">
                <input type="text" name="url" class="span11" value="{{$product->url}}" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Price :</label>
              <div class="controls">
                <input type="text" name="price" id="price" class="span11" value="{{$product->Price}}" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Quantity :</label>
              <div class="controls">
                <input type="text" name="quantity" id="quantity" class="span11" value="{{$product->Quantity}}" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Color :</label>
              <div class="controls">
                <input type="text" name="color" id="color" class="span11" value="{{$product->Color}}" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Status :</label>
              <div class="controls">
                 <select class="form-control" id="status" name="status" value="{{$product->status}}">
                  @if (($product->status) == 1)
                  <option value="1">
                    <button type="button" class="btn btn-info">Enable</button>
                  </option>
                  <option value="0">
                    <button type="button" class="btn btn-info">Disable</button>
                  </option>
                  @else
                  <option value="0">                
                    <button type="button" class="btn btn-warning">Disable</button>
                  </option>
                  <option value="1">
                    <button type="button" class="btn btn-info">Enable</button>
                  </option>
                  @endif
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Description</label>
              <div class="controls">
                <textarea class="span11" name="description" >{{$product->description}}</textarea>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Product Image</label>
              <div class="controls">
                <input type="hidden" name="current_image" value="{{$product->image}}" />
                <input type="file" name="image" id="image" />
                @if(!empty($product->image))
                  <img style="width:70px;" src="{{asset('/images/backend_images/products/small/'.$product->image)}}"/> | <a href={{url('/admin/products/deleteProductImage/'.$product->product_id)}}>Delete</a>
                @endif
              </div>
            </div>
            <div class="form-actions pull-right">
              <button type="submit" value="Edit Categories" class="btn btn-success">Save</button>
            </div>
            <div class="pull-left form-actions">
              <a  href="/admin/products" class="btn btn-default">Back</a>
            </div>
          </form>
        </div>
      </div>
    
      
    </div>
      </div>
 
</div></div>
<!--end-main-container-part-->
@endsection


