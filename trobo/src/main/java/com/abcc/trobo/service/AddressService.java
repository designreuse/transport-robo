package com.abcc.trobo.service;

import java.util.List;

import com.abcc.trobo.domain.Address;

public interface AddressService {
	public Address addAddress(Address address);

	public List<Address> getAllAddresses();
	
	public  void deleteAddress(Long id);
	
	public Address updateAddress(Address address);
	
	public Address getAddressForEmployee(Long empId);

	public int updateStatus(Long addressId);

	public Address updateAddressForEmployee(Long empId, Address address);

}
