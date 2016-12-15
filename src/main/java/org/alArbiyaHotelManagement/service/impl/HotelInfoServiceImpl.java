package org.alArbiyaHotelManagement.service.impl;

 
import java.io.File;
import java.util.List;

import org.alArbiyaHotelManagement.model.HotelInfo;
import org.alArbiyaHotelManagement.repository.HotelInfoRepository;
import org.alArbiyaHotelManagement.service.HotelInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelInfoServiceImpl implements HotelInfoService {

	@Autowired 
	private HotelInfoRepository infoRepository;
	
	@Override
	public HotelInfo editInfo(HotelInfo info) {
    return infoRepository.editInfo(info);
	}

	@Override
	public List<HotelInfo> getHotelInfo() {
		// TODO Auto-generated method stub
		return infoRepository.getHotelInfo();
	}

	@Override
	public void UploadLogo(HotelInfo info,File file) {
		info.setHotelLogoUrl(file.getAbsolutePath());
		 infoRepository.UploadLogo(info); 
	}
}
