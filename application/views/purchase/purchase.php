<!-- Manage Purchase Start -->
<div class="content-wrapper">
	<section class="content-header">
	    <div class="header-icon">
	        <i class="pe-7s-note2"></i>
	    </div>
	    <div class="header-title">
	        <h1><?php echo display('manage_purchase') ?></h1>
	        <small><?php echo display('manage_your_purchase') ?></small>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
	            <li><a href="#"><?php echo display('purchase') ?></a></li>
	            <li class="active"><?php echo display('manage_purchase') ?></li>
	        </ol>
	    </div>
	</section>

	<section class="content">

		<!-- Alert Message -->
	    <?php
	        $message = $this->session->userdata('message');
	        if (isset($message)) {
	    ?>
	    <div class="alert alert-info alert-dismissable">
	        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	        <?php echo $message ?>                    
	    </div>
	    <?php 
	        $this->session->unset_userdata('message');
	        }
	        $error_message = $this->session->userdata('error_message');
	        if (isset($error_message)) {
	    ?>
	    <div class="alert alert-danger alert-dismissable">
	        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	        <?php echo $error_message ?>                    
	    </div>
	    <?php 
	        $this->session->unset_userdata('error_message');
	        }
	    ?>
	            <div class="row">
			<div class="col-sm-8">
		        <div class="panel panel-default">
		            <div class="panel-body"> 
		             	<form action="<?php echo base_url('Cpurchase/manage_purchase_date_to_date')?>" class="form-inline" method="post" accept-charset="utf-8">
		                <?php date_default_timezone_set("Asia/Dhaka"); $today = date('Y-m-d'); ?>
		                    <div class="form-group">
		                        <label class="" for="from_date"><?php echo display('start_date') ?></label>
		                        <input type="text" name="from_date" class="form-control datepicker" id="from_date" value="<?php echo $today?>" placeholder="<?php echo display('start_date') ?>" >
		                    </div> 

		                    <div class="form-group">
		                        <label class="" for="to_date"><?php echo display('end_date') ?></label>
		                        <input type="text" name="to_date" class="form-control datepicker" id="to_date" placeholder="<?php echo display('end_date') ?>" value="<?php echo $today?>">
		                    </div>  

		                    <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
		                  
		              </form>	
		            </div>
		        </div>
		    </div>
		    <div class="col-sm-4">
		        <div class="panel panel-default">
		            <div class="panel-body"> 

						<form action="<?php echo base_url('Cpurchase/purchase_info_id')?>" class="form-inline" method="post" accept-charset="utf-8">
						    <label for="invoice_no"><?php echo display('invoice_no')?></label>
							
		                    <input type="text" style="width:160px;height:32px" class="" name="invoice_no" placeholder="<?php echo display('invoice_no') ?>">
							<button type="submit" class="btn btn-primary"><?php echo display('search')?></button>     
			            </form>		

			        </div>
		        </div>
                   </div>
		    </div>

	
			
        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                
                  <a href="<?php echo base_url('Cpurchase')?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-plus"> </i> <?php echo display('add_purchase')?> </a>

                </div>
            </div>
        </div>


		<!-- Manage Purchase report -->
		<div class="row">
		    <div class="col-sm-12">
		        <div class="panel panel-bd lobidrag">
		            <div class="panel-heading">
		                <div class="panel-title">
		                    <h4><?php echo display('manage_purchase') ?></h4>
		                </div>
		            </div>
		            <div class="panel-body">
		                <div class="table-responsive">
		                    <table id="dataTableExample2" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th><?php echo display('sl') ?></th>
										<th><?php echo display('invoice_no') ?></th>
										<th><?php echo display('purchase_id') ?></th>
										<th><?php echo display('supplier_name') ?></th>
										<th><?php echo display('purchase_date') ?></th>
										<th><?php echo display('total_ammount') ?></th>
										<th><?php echo display('action') ?></th>
									</tr>
								</thead>
								<tbody>
								<?php
									if ($purchases_list) {
								?>
								{purchases_list}
									<tr>
										<td>{sl}</td>
										<td>
											<a href="<?php echo base_url().'Cpurchase/purchase_details_data/{purchase_id}'; ?>">
												{chalan_no}
											</a>
										</td>
										<td>
											<a href="<?php echo base_url().'Cpurchase/purchase_details_data/{purchase_id}'; ?>">
												{purchase_id}
											</a>
										</td>
										<td>
											<a href="<?php echo base_url().'Csupplier/supplier_details/{supplier_id}'; ?>">
												{supplier_name}
											</a>
										</td>
										<td>{final_date}</td>
										<td style="text-align: right;"><?php echo (($position==0)?"$currency {grand_total_amount}":"{grand_total_amount} $currency") ?></td>
										<td>
											<center>
											<?php echo form_open()?>
												<a href="<?php echo base_url().'Cpurchase/purchase_update_form/{purchase_id}'; ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('update') ?>"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                               
												

                                               <a href="<?php echo base_url().'Cpurchase/delete_purchase/{purchase_id}'; ?>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('delete') ?> "><i class="fa fa-trash" aria-hidden="true"></i></a>
                                               <?php echo form_close()?>
											</center>
											
										</td>
									</tr>
								{/purchases_list}
								<?php
									}
								?>
								</tbody>
		                    </table>
		                </div>
		                <div class="text-right"><?php echo $links?></div>
		            </div>
		        </div>
		    </div>
		</div>
	</section>
</div>
<!-- Manage Purchase End -->

<!-- Delete Purchase ajax code -->
<script type="text/javascript">
	//Delete Purchase Item 
	$(".deletePurchase").click(function()
	{	
		var purchase_id=$(this).attr('name');
		var csrf_test_name=  $("[name=csrf_test_name]").val();
		var x = confirm("Are You Sure,Want to Delete ?");
		if (x==true){
		$.ajax
	   ({
			type: "POST",
			url: '<?php echo base_url('Cpurchase/purchase_delete')?>',
			data: {purchase_id:purchase_id,csrf_test_name:csrf_test_name},
			cache: false,
			success: function(datas)
			{
			} 
		});
		}
	});
</script>