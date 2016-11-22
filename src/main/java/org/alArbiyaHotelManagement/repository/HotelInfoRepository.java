package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.HotelInfo;

public interface HotelInfoRepository {

	public HotelInfo editInfo(HotelInfo info);

	public List<HotelInfo> getHotelInfo();
}
