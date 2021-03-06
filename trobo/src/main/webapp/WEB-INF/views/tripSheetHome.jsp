<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="row">
	<div class="col-lg-12">
		<h3 class="page-header">
			<s:message code="tripSheet.header" text="Welcome" />
		</h3>
	</div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
               <strong id="header">Generate trip sheet</strong>
            </div>
            <div class="panel-body">
                
                	<form role="form" id="tripSheetForm" name="tripSheetForm" method="POST" action="tripSheet/solve">
                	 <div class="row">
                		<div class="col-lg-4">
                			<div class="form-group">
                                <label>Date</label>
                                <input class="form-control" id="tripDate" name="date" type="date" placeholder="Enter date" required="required">
                                <p class="help-block error-msg" id="date-error" style="display: none;"></p>
                            </div>
                		</div>
                		<div class="col-lg-4">
                			<div class="form-group">
                                <label>Shift</label>
                               <select class="form-control" id="shiftId" name="shiftId" required="required">
                                	<option value="">Select</option>
									<c:forEach var="shift" items="${shifts}">
									    <option value="${shift.id}">${shift.startTime}-${shift.endTime}</option>
									</c:forEach>
								</select>
                                <p class="help-block error-msg" id="shiftId-error" style="display: none;"></p>
                            </div>
                		</div>
                		<div class="col-lg-4">
                			<div class="form-group">
                                <label>Type</label>
                                <select class="form-control" id="drop" name="drop" required="required">
                                	<option value="">Select</option>
                                	<option value="true">Drop</option>
                                	<option value="false">Pickup</option>
                                </select>
                                <p class="help-block error-msg" id="drop-error" style="display: none;"></p>
                            </div>
                		</div>
                	</div>
                	
                	<div class="row">
                		<div class="col-lg-12 text-center">
                			<div class="form-group">
                                <label>Vehicles</label>
                               <select class="form-control" id="vehicles" style="height: 150px;"  name="vehicleCapcities" required="required" multiple="multiple">
									<c:forEach var="vehicle" items="${vehicles}">
										<option value="${vehicle.seats}" data-id="${vehicle.id}"
											data-vehicle-number="${vehicle.vehicleNumber}">${vehicle.vehicleNumber}
											-- ${vehicle.seats}</option>
									</c:forEach>
								</select>
                                <p class="help-block error-msg">Total seats: <span id="totalSeats">0</span>
                                &nbsp;&nbsp;&nbsp;&nbsp;Total employees: <span id="totalEmployees">0</span></p>
                            </div>
                		</div>
                	</div>
                	
                	<div class="row">
                		<div class="col-lg-12 text-center">
                			<i id="loadIcon" class="fa fa-spinner fa-spin fa-2x" style="padding-right: 10px;display: none;"></i>
                			<button type="submit" style="width: 80px;" class="btn btn-primary">Generate</button>
                			<button type="button" id="countEmployees" style="width: 80px;" class="btn btn-primary">Count</button>
                			<button type="button" id="map" style="width: 80px;" class="btn btn-primary">Map</button>
                    		<button type="reset" style="width: 80px;" class="btn btn-primary">Reset</button>
                    	</div>
                	</div>
                	
                	<div class="row">
                		<div class="col-lg-12 text-center">
                			
                    	</div>
                	</div>
                	
                	
                </form>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<p class="pull-right" style="border: solid thin black; border-radius: 5px; padding: 2px;">Total travel distance of vehicles: <b><span id="scoreValue">Not solved</span></b></p>
		<div>
        	<button id="resolveDirectionsButton" class="btn btn-default" type="submit" onclick="resolveDirections()">Directions</button>
      </div>
      <div id="map-canvas" style="height: 600px; width: 100%; margin-top: 10px; margin-bottom: 10px;"></div>
	</div>
</div>
<div class="row" id="errMsg" style="display: none;">
	<div class="col-lg-12">           
		<div class="alert alert-danger">
     		<p id="errMsgMsgTxt">
     			Tripsheet data has been saved successfully. You can retrieve it from View trip sheet data option.
     		</p> 
     		
		</div>
	</div>
</div>

<div id="tripSheetData" style="display: none;">
<div class="row">
    <div class="col-lg-12" id="tablesDiv">
    	<!-- <table id="data-table1" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
    	</table>  -->
    </div>
</div>

<div class="row">
	<div class="col-lg-12 text-center">
		<button type="button" style="width: 80px;" id="saveTripSheet" class="btn btn-primary">Save</button>
   	</div>
</div>
</div>

<div class="row" id="successMsg" style="display: none;">
	<div class="col-lg-12">           
		<div class="alert alert-success">
     		<p class="fa fa-check text-success" id="successMsgTxt">
     			Tripsheet data has been saved successfully. You can retrieve it from View trip sheet data option.
     		</p> 
     		
		</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Vehicle route</h4>
					</div>
					<div class="modal-body">
						<div id="vehicle-route-map-canvas" style="height: 600px; width: 100%; margin-top: 10px; margin-bottom: 10px;"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"
        async defer></script>
<script>
	$(function(){
	    var dtToday = new Date();
	    dtToday.setDate(dtToday.getDate() + 1);
	
	    var month = dtToday.getMonth() + 1;
	    var day = dtToday.getDate();
	    var year = dtToday.getFullYear();
	
	    if(month < 10)
	        month = '0' + month.toString();
	    if(day < 10)
	        day = '0' + day.toString();
	
	    var maxDate = year + '-' + month + '-' + day;    
	    $("#tripDate").attr("min", maxDate);
	});
</script>