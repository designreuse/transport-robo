/*
 * Copyright 2015 JBoss Inc
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.allstate.trobo.vehiclerouting.domain;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class JsonVehicleRoute {

	private Long id;
    protected String depotLocationName;
    protected double depotLatitude;
    protected double depotLongitude;
    protected String time;

    protected String hexColor;
    protected int capacity;
    protected int demandTotal;
    private String vehicleNumber;

    protected List<JsonCustomer> customerList;

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDepotLocationName() {
        return depotLocationName;
    }

    public void setDepotLocationName(String depotLocationName) {
        this.depotLocationName = depotLocationName;
    }

    public double getDepotLatitude() {
        return depotLatitude;
    }

    public void setDepotLatitude(double depotLatitude) {
        this.depotLatitude = depotLatitude;
    }

    public double getDepotLongitude() {
        return depotLongitude;
    }

    public void setDepotLongitude(double depotLongitude) {
        this.depotLongitude = depotLongitude;
    }

    public String getHexColor() {
        return hexColor;
    }

    public void setHexColor(String hexColor) {
        this.hexColor = hexColor;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public int getDemandTotal() {
        return demandTotal;
    }

    public void setDemandTotal(int demandTotal) {
        this.demandTotal = demandTotal;
    }

    public List<JsonCustomer> getCustomerList() {
        return customerList;
    }

    public void setCustomerList(List<JsonCustomer> customerList) {
        this.customerList = customerList;
    }

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

}
