<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo e(config('app.name', 'E-App')); ?></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/bootstrap.min.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/bootstrap-responsive.min.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/fullcalendar.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/matrix-style.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/matrix-media.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/uniform.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/select2.css')); ?>" />
<link href="<?php echo e(asset('fonts/backend_fonts/css/font-awesome.css')); ?>" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<?php echo e(asset('css/backend_css/jquery.gritter.css')); ?>" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<style>
  .dataTables_filter{
    padding-top:0;
    margin-top:-40px;
  }
</style>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="<?php echo e(url('/admin/dashboard')); ?>">Matrix Admin</a></h1>
 <!-- <img src="http://127.0.0.1:8000/images/backend_images/logo.png" alt="Logo">
-->
</div>
<!--close-Header-part--> 



<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="/logout"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="<?php echo e(url('/admin/settings')); ?>"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="<?php echo e(url('/logout')); ?>"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->

<?php echo $__env->make('layouts.adminLayout.admin_sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>


<?php echo $__env->yieldContent('content'); ?>


<?php echo $__env->make('layouts.adminLayout.admin_footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
