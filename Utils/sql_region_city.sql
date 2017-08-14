DO $$DECLARE 
/* 
 * 基于中国人民共和国国家统计局2017-3-1发布的截止于2016-7-31的最新县及县以上行政区划代码
 * http://www.stats.gov.cn/tjsj/tjbz/xzqhdm/201703/t20170310_1471429.html
*/
BEGIN
	-- 国家/地区"中国"的国家包含区域字段改为Y
	UPDATE c_country SET hasregion = 'Y' WHERE c_country_id = 153;

	-- 导入"中国"的区域名称和城市的初始数据
	DELETE FROM c_city WHERE c_country_id = 153;
	DELETE FROM c_region WHERE c_country_id = 153;

	--------------------------------------------------
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','北京市','[110000]北京市[BEI JING SHI]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','天津市','[120000]天津市[TIAN JIN SHI]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','河北省','[130000]河北省[HE BEI SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','山西省','[140000]山西省[SHAN XI SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','内蒙古自治区','[150000]内蒙古自治区[NEI MENG GU ZI ZHI QU]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','辽宁省','[210000]辽宁省[LIAO NING SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','吉林省','[220000]吉林省[JI LIN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黑龙江省','[230000]黑龙江省[HEI LONG JIANG SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','上海市','[310000]上海市[SHANG HAI SHI]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','江苏省','[320000]江苏省[JIANG SU SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','浙江省','[330000]浙江省[ZHE JIANG SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','安徽省','[340000]安徽省[AN HUI SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','福建省','[350000]福建省[FU JIAN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','江西省','[360000]江西省[JIANG XI SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','山东省','[370000]山东省[SHAN DONG SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','河南省','[410000]河南省[HE NAN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','湖北省','[420000]湖北省[HU BEI SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','湖南省','[430000]湖南省[HU NAN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','广东省','[440000]广东省[GUANG DONG SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','广西壮族自治区','[450000]广西壮族自治区[GUANG XI ZHUANG ZU ZI ZHI QU]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','海南省','[460000]海南省[HAI NAN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','重庆市','[500000]重庆市[ZHONG QING SHI]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','四川省','[510000]四川省[SI CHUAN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','贵州省','[520000]贵州省[GUI ZHOU SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','云南省','[530000]云南省[YUN NAN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','西藏自治区','[540000]西藏自治区[XI CANG ZI ZHI QU]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','陕西省','[610000]陕西省[SHAN XI SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','甘肃省','[620000]甘肃省[GAN SU SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','青海省','[630000]青海省[QING HAI SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宁夏回族自治区','[640000]宁夏回族自治区[NING XIA HUI ZU ZI ZHI QU]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','新疆维吾尔自治区','[650000]新疆维吾尔自治区[XIN JIANG WEI WU ER ZI ZHI QU]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','台湾省','[710000]台湾省[TAI WAN SHENG]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','香港特别行政区','[810000]香港特别行政区[XIANG GANG TE BIE XING ZHENG QU]','153','N',generate_uuid());
	INSERT INTO c_region (c_region_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,c_country_id,isdefault,c_region_uu) 
		VALUES (nextid(62,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','澳门特别行政区','[820000]澳门特别行政区[AO MEN TE BIE XING ZHENG QU]','153','N',generate_uuid());

	--------------------------------------------------
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','东城区','\N','\N','','110101','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','西城区','\N','\N','','110102','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','朝阳区','\N','\N','','110105','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','丰台区','\N','\N','','110106','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','石景山区','\N','\N','','110107','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','海淀区','\N','\N','','110108','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','门头沟区','\N','\N','','110109','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','房山区','\N','\N','','110111','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','通州区','\N','\N','','110112','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','顺义区','\N','\N','','110113','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','昌平区','\N','\N','','110114','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大兴区','\N','\N','','110115','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','怀柔区','\N','\N','','110116','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','平谷区','\N','\N','','110117','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','密云区','\N','\N','','110118','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','延庆区','\N','\N','','110119','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '11'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','和平区','\N','\N','','120101','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','河东区','\N','\N','','120102','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','河西区','\N','\N','','120103','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南开区','\N','\N','','120104','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','河北区','\N','\N','','120105','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','红桥区','\N','\N','','120106','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','东丽区','\N','\N','','120110','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','西青区','\N','\N','','120111','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','津南区','\N','\N','','120112','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','北辰区','\N','\N','','120113','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','武清区','\N','\N','','120114','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宝坻区','\N','\N','','120115','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','滨海新区','\N','\N','','120116','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宁河区','\N','\N','','120117','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','静海区','\N','\N','','120118','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','蓟州区','\N','\N','','120119','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '12'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','石家庄市','\N','\N','','130100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','唐山市','\N','\N','','130200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','秦皇岛市','\N','\N','','130300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','邯郸市','\N','\N','','130400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','邢台市','\N','\N','','130500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','保定市','\N','\N','','130600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','张家口市','\N','\N','','130700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','承德市','\N','\N','','130800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','沧州市','\N','\N','','130900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','廊坊市','\N','\N','','131000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','衡水市','\N','\N','','131100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','定州市','\N','\N','','139001','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','辛集市','\N','\N','','139002','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '13'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','太原市','\N','\N','','140100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大同市','\N','\N','','140200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阳泉市','\N','\N','','140300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','长治市','\N','\N','','140400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','晋城市','\N','\N','','140500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','朔州市','\N','\N','','140600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','晋中市','\N','\N','','140700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','运城市','\N','\N','','140800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','忻州市','\N','\N','','140900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','临汾市','\N','\N','','141000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','吕梁市','\N','\N','','141100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '14'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','呼和浩特市','\N','\N','','150100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','包头市','\N','\N','','150200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','乌海市','\N','\N','','150300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','赤峰市','\N','\N','','150400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','通辽市','\N','\N','','150500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','鄂尔多斯市','\N','\N','','150600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','呼伦贝尔市','\N','\N','','150700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','巴彦淖尔市','\N','\N','','150800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','乌兰察布市','\N','\N','','150900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','兴安盟','\N','\N','','152200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','锡林郭勒盟','\N','\N','','152500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阿拉善盟','\N','\N','','152900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '15'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','沈阳市','\N','\N','','210100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大连市','\N','\N','','210200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','鞍山市','\N','\N','','210300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','抚顺市','\N','\N','','210400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','本溪市','\N','\N','','210500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','丹东市','\N','\N','','210600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','锦州市','\N','\N','','210700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','营口市','\N','\N','','210800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阜新市','\N','\N','','210900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','辽阳市','\N','\N','','211000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','盘锦市','\N','\N','','211100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','铁岭市','\N','\N','','211200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','朝阳市','\N','\N','','211300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','葫芦岛市','\N','\N','','211400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '21'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','长春市','\N','\N','','220100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','吉林市','\N','\N','','220200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','四平市','\N','\N','','220300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','辽源市','\N','\N','','220400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','通化市','\N','\N','','220500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','白山市','\N','\N','','220600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','松原市','\N','\N','','220700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','白城市','\N','\N','','220800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','延边朝鲜族自治州','\N','\N','','222400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '22'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','哈尔滨市','\N','\N','','230100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','齐齐哈尔市','\N','\N','','230200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','鸡西市','\N','\N','','230300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','鹤岗市','\N','\N','','230400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','双鸭山市','\N','\N','','230500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大庆市','\N','\N','','230600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','伊春市','\N','\N','','230700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','佳木斯市','\N','\N','','230800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','七台河市','\N','\N','','230900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','牡丹江市','\N','\N','','231000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黑河市','\N','\N','','231100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','绥化市','\N','\N','','231200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大兴安岭地区','\N','\N','','232700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '23'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黄浦区','\N','\N','','310101','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','徐汇区','\N','\N','','310104','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','长宁区','\N','\N','','310105','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','静安区','\N','\N','','310106','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','普陀区','\N','\N','','310107','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','虹口区','\N','\N','','310109','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','杨浦区','\N','\N','','310110','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','闵行区','\N','\N','','310112','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宝山区','\N','\N','','310113','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','嘉定区','\N','\N','','310114','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','浦东新区','\N','\N','','310115','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','金山区','\N','\N','','310116','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','松江区','\N','\N','','310117','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','青浦区','\N','\N','','310118','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','奉贤区','\N','\N','','310120','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','崇明区','\N','\N','','310151','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '31'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南京市','\N','\N','','320100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','无锡市','\N','\N','','320200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','徐州市','\N','\N','','320300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','常州市','\N','\N','','320400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','苏州市','\N','\N','','320500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南通市','\N','\N','','320600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','连云港市','\N','\N','','320700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','淮安市','\N','\N','','320800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','盐城市','\N','\N','','320900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','扬州市','\N','\N','','321000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','镇江市','\N','\N','','321100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','泰州市','\N','\N','','321200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宿迁市','\N','\N','','321300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '32'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','杭州市','\N','\N','','330100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宁波市','\N','\N','','330200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','温州市','\N','\N','','330300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','嘉兴市','\N','\N','','330400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','湖州市','\N','\N','','330500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','绍兴市','\N','\N','','330600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','金华市','\N','\N','','330700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','衢州市','\N','\N','','330800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','舟山市','\N','\N','','330900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','台州市','\N','\N','','331000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','丽水市','\N','\N','','331100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '33'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','合肥市','\N','\N','','340100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','芜湖市','\N','\N','','340200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','蚌埠市','\N','\N','','340300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','淮南市','\N','\N','','340400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','马鞍山市','\N','\N','','340500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','淮北市','\N','\N','','340600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','铜陵市','\N','\N','','340700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','安庆市','\N','\N','','340800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黄山市','\N','\N','','341000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','滁州市','\N','\N','','341100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阜阳市','\N','\N','','341200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宿州市','\N','\N','','341300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','六安市','\N','\N','','341500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','亳州市','\N','\N','','341600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','池州市','\N','\N','','341700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宣城市','\N','\N','','341800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '34'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','福州市','\N','\N','','350100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','厦门市','\N','\N','','350200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','莆田市','\N','\N','','350300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','三明市','\N','\N','','350400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','泉州市','\N','\N','','350500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','漳州市','\N','\N','','350600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南平市','\N','\N','','350700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','龙岩市','\N','\N','','350800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宁德市','\N','\N','','350900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '35'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南昌市','\N','\N','','360100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','景德镇市','\N','\N','','360200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','萍乡市','\N','\N','','360300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','九江市','\N','\N','','360400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','新余市','\N','\N','','360500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','鹰潭市','\N','\N','','360600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','赣州市','\N','\N','','360700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','吉安市','\N','\N','','360800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宜春市','\N','\N','','360900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','抚州市','\N','\N','','361000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','上饶市','\N','\N','','361100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '36'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','济南市','\N','\N','','370100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','青岛市','\N','\N','','370200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','淄博市','\N','\N','','370300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','枣庄市','\N','\N','','370400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','东营市','\N','\N','','370500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','烟台市','\N','\N','','370600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','潍坊市','\N','\N','','370700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','济宁市','\N','\N','','370800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','泰安市','\N','\N','','370900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','威海市','\N','\N','','371000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','日照市','\N','\N','','371100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','莱芜市','\N','\N','','371200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','临沂市','\N','\N','','371300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','德州市','\N','\N','','371400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','聊城市','\N','\N','','371500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','滨州市','\N','\N','','371600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','菏泽市','\N','\N','','371700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '37'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','郑州市','\N','\N','','410100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','开封市','\N','\N','','410200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','洛阳市','\N','\N','','410300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','平顶山市','\N','\N','','410400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','安阳市','\N','\N','','410500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','鹤壁市','\N','\N','','410600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','新乡市','\N','\N','','410700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','焦作市','\N','\N','','410800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','濮阳市','\N','\N','','410900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','许昌市','\N','\N','','411000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','漯河市','\N','\N','','411100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','三门峡市','\N','\N','','411200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南阳市','\N','\N','','411300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','商丘市','\N','\N','','411400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','信阳市','\N','\N','','411500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','周口市','\N','\N','','411600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','驻马店市','\N','\N','','411700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '41'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','武汉市','\N','\N','','420100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黄石市','\N','\N','','420200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','十堰市','\N','\N','','420300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宜昌市','\N','\N','','420500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','襄阳市','\N','\N','','420600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','鄂州市','\N','\N','','420700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','荆门市','\N','\N','','420800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','孝感市','\N','\N','','420900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','荆州市','\N','\N','','421000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黄冈市','\N','\N','','421100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','咸宁市','\N','\N','','421200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','随州市','\N','\N','','421300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','恩施土家族苗族自治州','\N','\N','','422800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '42'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','长沙市','\N','\N','','430100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','株洲市','\N','\N','','430200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','湘潭市','\N','\N','','430300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','衡阳市','\N','\N','','430400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','邵阳市','\N','\N','','430500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','岳阳市','\N','\N','','430600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','常德市','\N','\N','','430700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','张家界市','\N','\N','','430800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','益阳市','\N','\N','','430900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','郴州市','\N','\N','','431000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','永州市','\N','\N','','431100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','怀化市','\N','\N','','431200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','娄底市','\N','\N','','431300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','湘西土家族苗族自治州','\N','\N','','433100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '43'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','广州市','\N','\N','','440100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','韶关市','\N','\N','','440200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','深圳市','\N','\N','','440300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','珠海市','\N','\N','','440400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','汕头市','\N','\N','','440500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','佛山市','\N','\N','','440600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','江门市','\N','\N','','440700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','湛江市','\N','\N','','440800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','茂名市','\N','\N','','440900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','肇庆市','\N','\N','','441200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','惠州市','\N','\N','','441300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','梅州市','\N','\N','','441400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','汕尾市','\N','\N','','441500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','河源市','\N','\N','','441600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阳江市','\N','\N','','441700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','清远市','\N','\N','','441800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','东莞市','\N','\N','','441900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','中山市','\N','\N','','442000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','潮州市','\N','\N','','445100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','揭阳市','\N','\N','','445200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','云浮市','\N','\N','','445300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '44'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南宁市','\N','\N','','450100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','柳州市','\N','\N','','450200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','桂林市','\N','\N','','450300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','梧州市','\N','\N','','450400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','北海市','\N','\N','','450500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','防城港市','\N','\N','','450600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','钦州市','\N','\N','','450700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','贵港市','\N','\N','','450800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','玉林市','\N','\N','','450900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','百色市','\N','\N','','451000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','贺州市','\N','\N','','451100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','河池市','\N','\N','','451200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','来宾市','\N','\N','','451300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','崇左市','\N','\N','','451400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '45'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','海口市','\N','\N','','460100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '46'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','三亚市','\N','\N','','460200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '46'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','三沙市','\N','\N','','460300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '46'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','儋州市','\N','\N','','460400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '46'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','万州区','\N','\N','','500101','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','涪陵区','\N','\N','','500102','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','渝中区','\N','\N','','500103','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大渡口区','\N','\N','','500104','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','江北区','\N','\N','','500105','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','沙坪坝区','\N','\N','','500106','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','九龙坡区','\N','\N','','500107','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南岸区','\N','\N','','500108','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','北碚区','\N','\N','','500109','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','綦江区','\N','\N','','500110','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大足区','\N','\N','','500111','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','渝北区','\N','\N','','500112','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','巴南区','\N','\N','','500113','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黔江区','\N','\N','','500114','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','长寿区','\N','\N','','500115','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','江津区','\N','\N','','500116','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','合川区','\N','\N','','500117','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','永川区','\N','\N','','500118','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南川区','\N','\N','','500119','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','璧山区','\N','\N','','500120','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','铜梁区','\N','\N','','500151','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','潼南区','\N','\N','','500152','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','荣昌区','\N','\N','','500153','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','开州区','\N','\N','','500154','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','梁平县','\N','\N','','500228','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','城口县','\N','\N','','500229','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','丰都县','\N','\N','','500230','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','垫江县','\N','\N','','500231','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','武隆县','\N','\N','','500232','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','忠县','\N','\N','','500233','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','云阳县','\N','\N','','500235','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','奉节县','\N','\N','','500236','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','巫山县','\N','\N','','500237','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','巫溪县','\N','\N','','500238','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','石柱土家族自治县','\N','\N','','500240','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','秀山土家族苗族自治县','\N','\N','','500241','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','酉阳土家族苗族自治县','\N','\N','','500242','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','彭水苗族土家族自治县','\N','\N','','500243','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '50'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','成都市','\N','\N','','510100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','自贡市','\N','\N','','510300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','攀枝花市','\N','\N','','510400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','泸州市','\N','\N','','510500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','德阳市','\N','\N','','510600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','绵阳市','\N','\N','','510700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','广元市','\N','\N','','510800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','遂宁市','\N','\N','','510900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','内江市','\N','\N','','511000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','乐山市','\N','\N','','511100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','南充市','\N','\N','','511300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','眉山市','\N','\N','','511400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宜宾市','\N','\N','','511500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','广安市','\N','\N','','511600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','达州市','\N','\N','','511700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','雅安市','\N','\N','','511800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','巴中市','\N','\N','','511900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','资阳市','\N','\N','','512000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阿坝藏族羌族自治州','\N','\N','','513200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','甘孜藏族自治州','\N','\N','','513300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','凉山彝族自治州','\N','\N','','513400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '51'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','贵阳市','\N','\N','','520100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','六盘水市','\N','\N','','520200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','遵义市','\N','\N','','520300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','安顺市','\N','\N','','520400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','毕节市','\N','\N','','520500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','铜仁市','\N','\N','','520600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黔西南布依族苗族自治州','\N','\N','','522300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黔东南苗族侗族自治州','\N','\N','','522600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黔南布依族苗族自治州','\N','\N','','522700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '52'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','昆明市','\N','\N','','530100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','曲靖市','\N','\N','','530300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','玉溪市','\N','\N','','530400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','保山市','\N','\N','','530500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','昭通市','\N','\N','','530600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','丽江市','\N','\N','','530700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','普洱市','\N','\N','','530800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','临沧市','\N','\N','','530900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','楚雄彝族自治州','\N','\N','','532300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','红河哈尼族彝族自治州','\N','\N','','532500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','文山壮族苗族自治州','\N','\N','','532600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','西双版纳傣族自治州','\N','\N','','532800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','大理白族自治州','\N','\N','','532900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','德宏傣族景颇族自治州','\N','\N','','533100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','怒江傈僳族自治州','\N','\N','','533300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','迪庆藏族自治州','\N','\N','','533400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '53'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','拉萨市','\N','\N','','540100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '54'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','日喀则市','\N','\N','','540200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '54'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','昌都市','\N','\N','','540300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '54'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','林芝市','\N','\N','','540400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '54'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','山南市','\N','\N','','540500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '54'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','那曲地区','\N','\N','','542400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '54'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阿里地区','\N','\N','','542500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '54'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','西安市','\N','\N','','610100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','铜川市','\N','\N','','610200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','宝鸡市','\N','\N','','610300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','咸阳市','\N','\N','','610400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','渭南市','\N','\N','','610500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','延安市','\N','\N','','610600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','汉中市','\N','\N','','610700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','榆林市','\N','\N','','610800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','安康市','\N','\N','','610900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','商洛市','\N','\N','','611000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '61'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','兰州市','\N','\N','','620100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','嘉峪关市','\N','\N','','620200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','金昌市','\N','\N','','620300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','白银市','\N','\N','','620400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','天水市','\N','\N','','620500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','武威市','\N','\N','','620600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','张掖市','\N','\N','','620700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','平凉市','\N','\N','','620800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','酒泉市','\N','\N','','620900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','庆阳市','\N','\N','','621000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','定西市','\N','\N','','621100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','陇南市','\N','\N','','621200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','临夏回族自治州','\N','\N','','622900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','甘南藏族自治州','\N','\N','','623000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '62'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','西宁市','\N','\N','','630100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','海东市','\N','\N','','630200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','海北藏族自治州','\N','\N','','632200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','黄南藏族自治州','\N','\N','','632300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','海南藏族自治州','\N','\N','','632500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','果洛藏族自治州','\N','\N','','632600','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','玉树藏族自治州','\N','\N','','632700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','海西蒙古族藏族自治州','\N','\N','','632800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '63'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','银川市','\N','\N','','640100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '64'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','石嘴山市','\N','\N','','640200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '64'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','吴忠市','\N','\N','','640300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '64'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','固原市','\N','\N','','640400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '64'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','中卫市','\N','\N','','640500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '64'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','乌鲁木齐市','\N','\N','','650100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','克拉玛依市','\N','\N','','650200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','吐鲁番市','\N','\N','','650400','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','哈密市','\N','\N','','650500','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','昌吉回族自治州','\N','\N','','652300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','博尔塔拉蒙古自治州','\N','\N','','652700','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','巴音郭楞蒙古自治州','\N','\N','','652800','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阿克苏地区','\N','\N','','652900','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','克孜勒苏柯尔克孜自治州','\N','\N','','653000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','喀什地区','\N','\N','','653100','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','和田地区','\N','\N','','653200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','伊犁哈萨克自治州','\N','\N','','654000','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','塔城地区','\N','\N','','654200','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
	INSERT INTO C_CITY (c_city_id,ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,locode,coordinates,postal,areacode,c_country_id,c_region_id,c_city_uu)
		 VALUES (nextid(56,'N'),'0','0','Y',statement_timestamp(),'100',statement_timestamp(),'100','阿勒泰地区','\N','\N','','654300','153',(SELECT c_region_id FROM c_region where SUBSTRING(description,2,2) = '65'),generate_uuid());
END$$;