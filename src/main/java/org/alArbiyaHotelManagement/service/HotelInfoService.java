package org.alArbiyaHotelManagement.service;

import java.io.File;
import java.util.List;

import org.alArbiyaHotelManagement.model.HotelInfo;

public interface HotelInfoService {

	public HotelInfo editInfo(HotelInfo info);

	public List<HotelInfo> getHotelInfo();

	public void UploadLogo(HotelInfo info,File imageUrl);
}
