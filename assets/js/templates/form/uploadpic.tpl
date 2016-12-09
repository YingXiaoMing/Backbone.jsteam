<div class="btn-toolbar">
	<div class="btn-group btn-group-xs btn-config" role="group">
		<button type="button" class="btn btn-primary" rel="modal" data-target="${target}">
			编辑
        </button>
        <button type="button" class="btn btn-primary" rel="copy">
			复制
        </button>
        <div class="btn-group btn-group-xs" role="group">
		    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      	标签占比<span class="caret"></span>
		    </button>
		    <ul class="dropdown-menu">
		      	<li class="active"><a href="#" rel="col-sm-2 col-sm-10">默认</a></li>
		      	<li class=""><a href="#" rel="col-sm-12 col-sm-12">12/12</a></li>
				<li class=""><a href="#" rel="col-sm-11 col-sm-1">11/12</a></li>
				<li class=""><a href="#" rel="col-sm-10 col-sm-2">10/12</a></li>
				<li class=""><a href="#" rel="col-sm-9 col-sm-3">5/12</a></li>
				<li class=""><a href="#" rel="col-sm-8 col-sm-4">4/12</a></li>
		      	<li class=""><a href="#" rel="col-sm-7 col-sm-5">7/12</a></li>
				<li class=""><a href="#" rel="col-sm-6 col-sm-6">6/12</a></li>
				<li class=""><a href="#" rel="col-sm-5 col-sm-7">5/12</a></li>
				<li class=""><a href="#" rel="col-sm-4 col-sm-8">4/12</a></li>
				<li class=""><a href="#" rel="col-sm-3 col-sm-9">3/12</a></li>
				<li class=""><a href="#" rel="col-sm-2 col-sm-10">2/12</a></li>
				<li class=""><a href="#" rel="col-sm-1 col-sm-11">1/12</a></li>
				<li class=""><a href="#" rel="hide col-sm-12">0/12</a></li>
		    </ul>
		</div>
        <div class="btn-group btn-group-xs" role="group">
		    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      	颜色<span class="caret"></span>
		    </button>
		    <ul class="dropdown-menu">
		      	<li class="active"><a href="#" rel="">默认</a></li>
				<li class=""><a href="#" rel="text-muted">灰色</a></li>
				<li class=""><a href="#" rel="text-primary">蓝色</a></li>
				<li class=""><a href="#" rel="text-success">绿色</a></li>
				<li class=""><a href="#" rel="text-info">深蓝</a></li>
				<li class=""><a href="#" rel="text-warning">黄色</a></li>
				<li class=""><a href="#" rel="text-danger">红色</a></li>
		    </ul>
		</div>
	</div>
   	<div class="btn-group btn-group-xs btn-base" role="group">
		<button  class="btn btn-primary drag">
			<i class="glyphicon glyphicon-move"></i>拖动
		</button>
		<button class="btn btn-danger" rel="removeHandler">
			<i class="glyphicon glyphicon-remove"></i>删除
		</button>
	</div>
</div>
<span class="drag label label-default"><i class="glyphicon glyphicon-move"></i>拖动</span>
<div class="preview">图片</div>
<div class="view clearfix">
	<img src="img/test.jpg" alt="..." class="">
</div>
<div class="form-mask"></div>
